
# -*- coding: utf-8 -*-

import json

from django.views.decorators.http import require_POST
from django.http import StreamingHttpResponse
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt

from web.constants import const
import web.models
from web.utils.logger import Logger

@require_POST
@method_decorator(csrf_exempt)
def upload_tmp_images(request, *args, **kwargs):
    try:
        files = request.FILES.getlist(u'image-files')
        for img_file in files:
            web.models.Image.manager.create_article_tmp_img(request.user, img_file)
        result = True
    except Exception as ex:
        result = ex.message
        Logger.log_exception("image_views.upload_tmp_images", ex)
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def mark_tmp_image_as_main(request, *args, **kwargs):
    try:
        web.models.Image.manager.update_article_tmp_main(request.user, request.POST)
        result = True
    except Exception as ex:
        result = ex.message
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def delete_tmp_image(request, *args, **kwargs):
    try:
        img_data = request.POST
        req_file_name = img_data[u'file_name']
        req_file_name = req_file_name.split("#")[0]
        is_temp = json.loads(img_data[u'temp'])
        if is_temp:
            # Si no es main:
            web.models.Image.manager.clean_article_tmp_img(req_file_name, request.user.id)
        else:
            if u'art_deletable_img_ids' not in request.session:
                request.session[u'art_deletable_img_ids'] = list()
                request.session.modified = True
            try:
                image = web.models.Image.manager.get(image_id = int(img_data[u'image_id']))
                request.session[u'art_deletable_img_ids'].append(image.image_id)
                request.session.modified = True
            except Exception as ex:
                Logger.log_exception("image_views.delete_tmp_image.post", ex)
        result = True
    except Exception as ex:
        result = ex.message
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def article_image_list(request, *args, **kwargs):
    result = list()
    try:
        if not request.session.exists(request.session.session_key):
            request.session.create()
        post = request.POST
        user_tmp_dir = const.TEMP_ARTICLE_IMG_PATH + "user_" + str(request.user.id) + "\\"
        path_for_template = const.TEMP_PATH_ART_IMG_FOR_TPL + "user_" + str(request.user.id) + "/"
        temp_article_images = web.models.Image.manager.load_article_temp_img_paths(user_tmp_dir, path_for_template)
        article_images = list()
        if u'article_id' in post:
            article_id = int(post[u'article_id'])
            if u'art_deletable_img_ids' in request.session:
                deletable_img_ids = request.session[u'art_deletable_img_ids']
            else:
                deletable_img_ids = list()
            request.session.modified = True
            article_images = web.models.Image.manager.load_article_img_paths(article_id=article_id, art_deletable_img_ids=deletable_img_ids)

        temp_main = False

        for img in temp_article_images:
            if img[u'is_main']:
                temp_main = True
                break
        if temp_main:
            for img in article_images:
                img[u'is_main'] = False
        result = temp_article_images + article_images
        result = sorted(result, key=lambda k: (k['image_path']))
    except Exception as ex:
        Logger.log_exception("image_views.article_image_list", ex)
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")