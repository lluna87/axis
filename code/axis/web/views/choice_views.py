# -*- coding: utf-8 -*-

import json

from django.http import StreamingHttpResponse
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from django.views.decorators.http import require_GET, require_POST

import web.models
from web.utils.converters.json_poll import JsonPoll
from web.utils.logger import Logger

@require_GET
@method_decorator(csrf_exempt)
def load(request, *args, **kwargs):
    get = request.GET
    poll_id = 0
    result = list()
    try:
        if u'poll_id' in get and get[u'poll_id'] != '':
            poll_id = int(get[u'poll_id'])
        if poll_id > 0:
            items = web.models.Choice.manager.load(poll_id)
            result = JsonPoll.choice_to_json_list(items)
        else:
            if u'poll_choices' in request.session:
                result = request.session[u'poll_choices']
            else:
                request.session[u'poll_choices'] = result
                request.session.modified = True
    except Exception as ex:
        Logger.log_exception("choice_request, *args, **kwargss.load_author.get", ex)
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def insert(request, *args, **kwargs):
    if u'poll_choices' not in request.session:
        request.session[u'poll_choices'] = list()
    result = {}
    try:
        poll_id = json.loads(request.POST[u'poll_id'])
        choice_text = request.POST[u'text']
        if poll_id > 0:
            new_choice = web.models.Choice.manager.insert(poll_id, choice_text)
        else:
            new_choice = web.models.Choice.manager.create_temp(choice_text)
        if new_choice is not None:
            new_choice.choice_id = len(request.session[u'poll_choices']) + 1
            result = JsonPoll.choice_to_json(new_choice)
            request.session[u'poll_choices'].append(result)
            request.session.modified = True
    except Exception as ex:
        Logger.log_exception("choice_request, *args, **kwargss.Insert.post", ex)
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def update(request, *args, **kwargs):
    result = None
    try:
        poll_id = json.loads(request.POST[u'poll_id'])
        choice_id = json.loads(request.POST[u'choice_id'])
        text = request.POST[u'text']
        choices_list = request.session[u'poll_choices']
        choice = web.models.Choice()
        if poll_id > 0:
            choice = web.models.Choice.manager.update(poll_id, choice_id, text)
        else:
            if u'poll_choices' in request.session:
                for x in choices_list:
                    if int(x[u'choice_id']) == choice_id:
                        choices_list.remove(x)
                        x[u'text'] = text
                        choices_list.append(x)
                        request.session[u'poll_choices'] = choices_list
                        choice = x
                        break
        result = choice
    except Exception as ex:
        Logger.log_exception("choice_request, *args, **kwargss.Update.get", ex)
    return StreamingHttpResponse(json.dumps(JsonPoll.choice_to_json(result)), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def delete(request, *args, **kwargs):
    result = list()
    try:
        query = web.models.Choice.manager.filter(deleted=False)
        result = JsonPoll.poll_to_json_list(query)
    except Exception as ex:
        Logger.log_exception("choice_request, *args, **kwargss.Delete.post", ex)
    return StreamingHttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def clear_temp(request, *args, **kwargs):
    try:
        if u'poll_choices' in request.session:
            request.session[u'poll_choices'] = list()
            request.session.modified = True
    except Exception as ex:
        Logger.log_exception("choice_views.clear_temp", ex)
    return StreamingHttpResponse("OK", content_type="application/json")