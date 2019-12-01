
# -*- coding: utf-8 -*-

import json
from datetime import datetime
from django.http import HttpResponse

from django.utils.decorators import method_decorator
from django.utils.timezone import utc
from django.views.decorators.csrf import csrf_exempt
from django.views.decorators.http import require_GET, require_POST
import unicodedata
import web.helpers.db_helper as dbh
import web.helpers.datetime_helper as dateh
import web.models
from web.utils.converters.json_poll import JsonPoll
from web.utils.logger import Logger

@require_GET
@method_decorator(csrf_exempt)
def load(request, *args, **kwargs):
    include_choices = False
    try:
        include_choices = u'include_choices' in request.GET
        kwargs = {
            'deleted': False
        }
        if u'period_start' in request.GET and not request.GET[u'period_start'] == "":
            period_start = dateh.DateTimeHelper.convert_input_str_to_datetime(request.GET[u'period_start'])
            kwargs['voting_period_start__gte'] = period_start
        if u'period_end' in request.GET and not request.GET[u'period_end'] == "":
            period_end = dateh.DateTimeHelper.convert_input_str_to_datetime(request.GET[u'period_end'])
            kwargs['voting_period_end__lte'] = period_end
        if u'sections' in request.GET and len(json.loads(request.GET[u'sections'])) > 0:
            section_ids = json.loads(request.GET[u'sections'])
            kwargs['pollsection__section_id__in'] = section_ids
        if u'title' in request.GET and not request.GET[u'title'] == "":
            title = request.GET[u'title']
            kwargs['title__icontains'] = title
        query = web.models.Poll.manager.filter(**kwargs).order_by('-voting_period_end', '-voting_period_start')
    except Exception as ex:
        query = list()
        Logger.log_exception("poll_views.load_author.get", ex)
    try:
        if include_choices:
            session_user = web.models.UserProfile.manager.get_by_user_id(request.user.id)
            if request.user.is_authenticated():
                result = JsonPoll.to_json_list_for_user_block(query, session_user.user_profile_id)
            else:
                result = JsonPoll.to_json_list_for_block(query)
        else:
            session_user = web.models.UserProfile.manager.get_by_user_id(request.user.id)
            result = JsonPoll.poll_to_json_list(query, session_user)
    except Exception as ex:
        result = list()
        Logger.log_exception("poll_views.load_author.get", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def load_random(request, *args, **kwargs):
    try:
        now = datetime.utcnow().replace(tzinfo=utc)
        kwargs = {
            'deleted': False,
            'voting_period_start__lte': now,
            'voting_period_end__gte': now
        }
        if u'section_id' in request.POST:
            kwargs['pollsection__section_id'] = json.loads(request.POST[u'section_id'])
        if request.user.is_authenticated():
            user_profile = web.models.UserProfile.manager.get(user_id=request.user.id)
            user_votes_query = web.models.Vote.manager.filter(user_profile_id=user_profile.user_profile_id).values('poll_id')
            user_votes_ids = [id['poll_id'] for id in user_votes_query]
            polls = web.models.Poll.manager.exclude(poll_id__in=user_votes_ids)
            polls = polls.filter(**kwargs)
        else:
            polls = web.models.Poll.manager.filter(**kwargs)
        polls = polls.order_by("poll_id")[:3]
    except Exception as ex:
        polls = list()
        Logger.log_exception("poll_views.load_random.post", ex)
    user_profile = web.models.UserProfile.manager.get_by_user_id(request.user.id)
    if request.user.is_authenticated():
        result = JsonPoll.to_json_list_for_user_block(polls, user_profile.user_profile_id)
    else:
        result = JsonPoll.to_json_list_for_block(polls)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def insert(request, *args, **kwargs):
    result = None
    try:
        poll_data = request.GET
        title = poll_data[u'title']
        period_start_str = unicodedata.normalize('NFKD', poll_data[u'voting_period_start']).encode('ascii','ignore')
        period_end_str = unicodedata.normalize('NFKD', poll_data[u'voting_period_end']).encode('ascii','ignore')
        description = poll_data[u'description']
        multiple = u'multiple_choice' in poll_data and poll_data[u'multiple_choice'] == u'true'
        new_poll = web.models.Poll.manager.insert(title, period_start_str, period_end_str, description, multiple)

        if (new_poll is not None):
            user_profile = web.models.UserProfile.manager.get(user_id=request.user.id)
            web.models.Publication.manager.insert_poll(new_poll.poll_id, user_profile.user_profile_id)

            if (u'choices' in poll_data):
                choices = json.loads(poll_data[u'choices'])
                choice_texts = list()
                for choice in choices:
                    choice_texts.append(choice[u'text'])
                web.models.Choice.manager.insert_texts(new_poll.poll_id, choice_texts)

            if (u'sections' in poll_data):
                sections = json.loads(poll_data[u'sections'])
                for section_id in sections:
                    try:
                        poll_section = web.models.PollSection()
                        poll_section.poll_section_id = dbh.DBHelper.next_seq_value('poll_section_id_seq')
                        poll_section.poll_id = new_poll.poll_id
                        poll_section.section_id = section_id
                        poll_section.save()
                    except Exception as ex:
                        Logger.log_exception("poll_views.insert", ex)

            result = JsonPoll.poll_to_json(new_poll)
    except Exception as ex:
        Logger.log_exception("poll_views.insert.get", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def update(request, *args, **kwargs):
    result = None
    try:
        poll_data = request.GET
        poll_id = poll_data[u'poll_id']
        title = poll_data[u'title']
        period_start_str = unicodedata.normalize('NFKD', poll_data[u'voting_period_start']).encode('ascii','ignore')
        period_end_str = unicodedata.normalize('NFKD', poll_data[u'voting_period_end']).encode('ascii','ignore')
        description = poll_data[u'description']
        multiple = json.loads(poll_data[u'multiple_choice'])
        poll = web.models.Poll.manager.update(poll_id, title, period_start_str, period_end_str, description, multiple)
        if (poll is not None):
            result = JsonPoll.poll_to_json(poll)

        # SECTIONS
        section_ids = json.loads(poll_data[u'sections'])
        web.models.Poll.manager.update_sections(poll, section_ids)

    except Exception as ex:
        Logger.log_exception("poll_views.Update.get", ex)
    return HttpResponse(json.dumps(result), content_type="json")

@require_POST
@method_decorator(csrf_exempt)
def register_votes(request, *args, **kwargs):
    result = False
    post = request.POST
    try:
        poll_id = json.loads(post[u'pollId'])
        choice_ids = json.loads(post[u'choiceIds'])
        user_profile = web.models.UserProfile.manager.get(user_id=request.user.id)
        votes = list()
        for choice_id in choice_ids:
            vote = web.models.Vote.manager.insert(poll_id, choice_id, user_profile.user_profile_id)
            if vote is not None:
                votes.append(vote)
        if len(votes) > 0:
            poll = web.models.Poll.manager.get(poll_id=poll_id)
            result = JsonPoll.to_json_for_user_block(poll, user_profile.user_profile_id)
    except Exception as ex:
        Logger.log_exception("poll_views.RegisterVotes.post", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")