
# -*- coding: utf-8 -*-

import json

from django.views.decorators.http import require_GET, require_POST
from django.http import HttpResponse, StreamingHttpResponse
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt

import web.models
from web.utils.converters.json_tag import JsonTag
from web.utils.logger import Logger

@require_GET
@method_decorator(csrf_exempt)
def load_for_combo(request, *args, **kwargs):
    result = list()
    try:
        query = web.models.Tag.manager.load_for_combo()
        result = JsonTag.to_json_for_select(query)
    except Exception as ex:
        Logger.log_exception("tag_views.load_for_combo", ex)
        return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def moderate(request, *args, **kwargs):
    try:
        tag_id = request.POST[u'tag_id']
        web.models.Tag.manager.moderate(tag_id)
        result = True
    except Exception as ex:
        result = False
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")