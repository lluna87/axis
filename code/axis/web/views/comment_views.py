
# -*- coding: utf-8 -*-

import json

from django.views.decorators.http import require_POST
from django.http import StreamingHttpResponse
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt

import web.models
from web.utils.converters.json_comments import JsonComment
from web.utils.logger import Logger

@require_POST
@method_decorator(csrf_exempt)
def add(request, *args, **kwargs):
    try:
        article_id = request.POST[u'article_id']
        content = request.POST[u'comment']
        user_profile = web.models.UserProfile.manager.get(user_id=request.user.id)
        comment = web.models.Comment.manager.insert(article_id, user_profile.user_profile_id, content)
        if comment is None:
            raise Exception, "Error al registrar comentario, se devolvió None"
        result = JsonComment.to_json(comment)
    except Exception as ex:
        result = False
        Logger.log_exception("comment_views.add", ex)
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def load(request, *args, **kwargs):
    comments_list = list()
    try:
        article_id = request.POST[u'article_id']
        kwargs = { 'article_id':article_id }
        last_id = int(request.POST[u'last_id'])
        if last_id > 0:
            kwargs['last_id']  = last_id
        comments = web.models.Comment.manager.load(**kwargs)
        comments_list = JsonComment.to_json_list(comments)
    except Exception as ex:
        Logger.log_exception("comment_views.load", ex)
    return StreamingHttpResponse(json.dumps(comments_list), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def delete(request, *args, **kwargs):
    result = False
    try:
        article_id = request.POST[u'article_id']
        comment_id = request.POST[u'comment_id']
        result = web.models.Comment.manager.delete(article_id, comment_id)
    except Exception as ex:
        Logger.log_exception("comment_views.delete.post", ex)
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def moderate(request, *args, **kwargs):
    try:
        comment_id = request.POST[u'comment_id']
        web.models.Comment.manager.moderate(comment_id)
        result = True
    except Exception as ex:
        Logger.log_exception("comment_views.moderate", ex)
        result = False
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")