# -*- coding: utf-8 -*-

import json

from django.views.decorators.http import require_GET, require_POST
from django.template.response import TemplateResponse
from django.http import HttpResponse
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt

import web.models
from web.utils.converters.json_author import JsonAuthor
from web.utils.logger import Logger

@require_GET
@method_decorator(csrf_exempt)
def load(request, *args, **kwargs):
    result = list()
    try:
        authors = web.models.Author.manager.load()
        result = JsonAuthor.to_json_list(authors)
    except Exception as ex:
        Logger.log_exception("author_views.load.get", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")


@require_GET
@method_decorator(csrf_exempt)
def insert(request, *args, **kwargs):
    result = {}
    try:
        user = request.user
        author_data = request.GET
        new_author = web.models.Author.manager.insert(user, author_data)
        if new_author is not None:
            result = JsonAuthor.to_json(new_author)
    except Exception as ex:
        Logger.log_exception("author_views.insert.get", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def update(request, *args, **kwargs):
    result = {}
    try:
        author = web.models.Author.manager.update(request.GET)
        if author is not None:
            result = JsonAuthor.to_json(author)
    except Exception as ex:
        Logger.log_exception("author_views.update.get", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def delete(request, *args, **kwargs):
    result = list()
    try:
        author_id = int(request.GET[u'author_id'])
        web.models.Author.manager.delete(author_id)
        query = web.models.Author.manager.load()
        result = JsonAuthor.to_json_list(query)
    except Exception as ex:
        Logger.log_exception("author_views.delete.get", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def load_author(request, *args, **kwargs):
    try:
        author_id = int(request.POST[u'author_id'])
        author = web.models.Author.manager.get(pk=author_id)
        result = JsonAuthor.to_json(author)
        return HttpResponse(json.dumps(result), content_type="application/json")
    except Exception as ex:
        Logger.log_exception("author_views.load_author", ex)
        return HttpResponse(json.dumps(False), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def upload_author_tmp_img(request, *args, **kwargs):
    try:
        img_file = request.FILES[u'profile_image']
        user = request.user
        file_name = web.models.Image.manager.create_author_tmp_img(user, img_file)
        return HttpResponse(json.dumps(file_name), content_type="application/json")
    except:
        return HttpResponse(json.dumps(False), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def clean_author_tmp_img(request, *args, **kwargs):
    try:
        user = request.user
        web.models.Image.manager.clean_author_tmp_profile_img(user.id)
    except Exception as ex:
        Logger.log_exception("author_views.clean_author_tmp_img", ex)
    return HttpResponse()

@require_GET
@method_decorator(csrf_exempt)
def load_for_combo(request, *args, **kwargs):
    result = list()
    try:
        query = web.models.Author.manager.load()
        result = JsonAuthor.to_json_list_for_cbo(query)
    except Exception as ex:
        Logger.log_exception("author_views.load_for_combo", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def external_insert(request, *args, **kwargs):
    return TemplateResponse(request, 'web/editor_templates/author/external_editor.html', {})