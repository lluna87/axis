
# -*- coding: utf-8 -*-

import json

from django.views.decorators.http import require_GET, require_POST
from django.http import HttpResponse
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt

import web.models
from web.utils.converters.json_author import JsonAuthor
from web.utils.converters.json_section import JsonSection
from web.utils.logger import Logger


@require_GET
@method_decorator(csrf_exempt)
def load(request, *args, **kwargs):
    result = list()
    try:
        query = web.models.Section.manager.load()
        result = JsonSection.to_json_list(query)
    except Exception as ex:
        Logger.log_exception("section_views.load", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")


@require_GET
@method_decorator(csrf_exempt)
def insert(request, *args, **kwargs):
    result = {}
    try:
        name = request.GET[u'name']
        new_section = web.models.Section.manager.insert(name)
        if new_section is not None:
            result = JsonSection.to_json(new_section)
    except Exception as ex:
        Logger.log_exception("section_views.insert", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")


@require_GET
@method_decorator(csrf_exempt)
def update(request, *args, **kwargs):
    result = {}
    try:
        section_data = request.GET
        section = web.models.Section.manager.update(section_data)
        result = JsonSection.to_json(section)
    except Exception as ex:
        Logger.log_exception("section_views.update", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")


@require_GET
@method_decorator(csrf_exempt)
def delete(request, *args, **kwargs):
    try:
        section_id = int(request.GET[u'section_id'])
        web.models.Section.manager.delete(section_id)
    except Exception as ex:
        Logger.log_exception("section_views.delete", ex)
    result = list()
    try:
        query = web.models.Section.manager.filter(deleted=False)
        result = JsonAuthor.to_json_list(query)
    except Exception as ex:
        Logger.log_exception("section_views.delete", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")


@require_GET
@method_decorator(csrf_exempt)
def load_for_combo(request, *args, **kwargs):
    result = list()
    try:
        query = web.models.Section.manager.load()
        result = JsonSection.to_json_for_combo(query)
    except Exception as ex:
        Logger.log_exception("section_views.load_for_combo", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")


@require_GET
@method_decorator(csrf_exempt)
def load_for_multiselect(request, *args, **kwargs):
    result = list()
    try:
        query = web.models.Section.manager.load()
        result = JsonSection.to_json_for_combo(query)
    except Exception as ex:
        Logger.log_exception("section_views.load_for_multiselect", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")


@require_POST
@method_decorator(csrf_exempt)
def name_exists(request, *args, **kwargs):
    result = False
    try:
        name = request.POST[u'name']
        result = web.models.Section.manager.name_exists(name)
    except Exception as ex:
        Logger.log_exception("section_views.CheckName.post", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")