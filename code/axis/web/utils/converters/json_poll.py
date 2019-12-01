from django.utils.timezone import utc
import web.helpers.datetime_helper as dateh
from datetime import datetime
from web.utils.logger import Logger

class JsonPoll(object):

    @classmethod
    def poll_to_json(cls, poll):
        result = {}
        try:
            sections_db = poll.pollsection_set.all()
            sections_display = ""
            sections = list()
            for poll_section in sections_db:
                if sections_display == "": sections_display = poll_section.section.name
                else: sections_display += ", " + poll_section.section.name
                try:
                    section_json = {
                        'section_id': poll_section.section.section_id,
                        'name': poll_section.section.name
                    }
                    sections.append(section_json)
                except:
                    pass

            publisher_display = ""
            publisher_id = 0
            publisher_auth_user_id = 0
            try:
                publisher = poll.publication.user_profile
                publisher_display = publisher.user.first_name + " " + publisher.user.last_name
                publisher_id = publisher.user_profile_id
                publisher_auth_user_id = publisher.user.id
            except Exception as ex:
                Logger.log_exception("JsonPoll.poll_to_json", ex)

            try:
                ended = False
                running = False
                now = datetime.utcnow().replace(tzinfo=utc)
                if poll.voting_period_end < now:
                    ended = True
                elif poll.voting_period_start <= now and poll.voting_period_end >= now:
                    running = True
                if running or ended:
                    poll.editable = False
                    poll.save()
            except Exception as ex:
                Logger.log_exception("JsonPoll.poll_to_json", ex)

            voting_period_start_str = dateh.DateTimeHelper.to_datetime_str(poll.voting_period_start)
            voting_period_end_str = dateh.DateTimeHelper.to_datetime_str(poll.voting_period_end)
            result = {
                'poll_id': poll.poll_id,
                'title': poll.title,
                'description': poll.description,
                'multiple_choice': poll.multiple_choice,
                'voting_period_start': voting_period_start_str,
                'voting_period_end': voting_period_end_str,
                'deleted': poll.deleted,
                'editable': poll.editable,
                'sections': sections,
                'publisher_display': publisher_display,
                'publisher_id': publisher_id,
                'publisher_auth_user_id': publisher_auth_user_id
            }
        except Exception as ex:
            Logger.log_exception("JsonPoll.poll_to_json", ex)
        return result

    @classmethod
    def to_json_for_user_block(cls, poll, user_profile_id):
        result = {}
        try:
            voting_period_start_str = dateh.DateTimeHelper.to_datetime_str(poll.voting_period_start)
            voting_period_end_str = dateh.DateTimeHelper.to_datetime_str(poll.voting_period_end)
            choices = list()
            for choice in poll.choice_set.all():
                try:
                    choice_json = cls.choice_votes_to_json(choice)
                    choices.append(choice_json)
                except Exception as ex:
                    Logger.log_exception("JsonPoll.to_json_for_user_block", ex)
            user_voted = False
            selected_choices = list(poll.vote_set.filter(user_profile_id=user_profile_id).distinct('choice__choice_id').values('choice__choice_id'))
            user_choices_ids = list()
            if len(selected_choices) > 0:
                user_voted = True
                for selected_choice in selected_choices:
                    user_choices_ids.append(selected_choice['choice__choice_id'])
            finished = False
            if poll.voting_period_end <= datetime.utcnow().replace(tzinfo=utc):
                finished = True
            poll_json = {
                'poll_id': poll.poll_id,
                'title': poll.title,
                'description': poll.description,
                'multiple_choice': poll.multiple_choice,
                'voting_period_start': voting_period_start_str,
                'voting_period_end': voting_period_end_str,
                'deleted': poll.deleted,
                'editable': poll.editable,
                'choices': choices,
                'user_voted': user_voted,
                'user_choices': user_choices_ids,
                'finished': finished
            }
            result = poll_json
        except Exception as ex:
            Logger.log_exception("JsonPoll.to_json_for_user_block", ex)
        return result

    @classmethod
    def to_json_list_for_user_block(cls, poll_list, user_profile_id):
        result = list()
        for poll in poll_list:
            try:
                poll_json = cls.to_json_for_user_block(poll, user_profile_id)
                result.append(poll_json)
            except Exception as ex:
                Logger.log_exception("JsonPoll.to_json_list_for_user_block", ex)
        return result

    @classmethod
    def to_json_list_for_block(cls, poll_list):
        result = list()
        for poll in poll_list:
            try:
                voting_period_start_str = dateh.DateTimeHelper.to_datetime_str(poll.voting_period_start)
                voting_period_end_str = dateh.DateTimeHelper.to_datetime_str(poll.voting_period_end)
                choices = list()
                for choice in poll.choice_set.all():
                    try:
                        choice_json = cls.choice_votes_to_json(choice)
                        choices.append(choice_json)
                    except Exception as ex:
                        Logger.log_exception("JsonPoll.to_json_list_for_block", ex)
                choice_json = {
                    'poll_id': poll.poll_id,
                    'title': poll.title,
                    'description': poll.description,
                    'multiple_choice': poll.multiple_choice,
                    'voting_period_start': voting_period_start_str,
                    'voting_period_end': voting_period_end_str,
                    'deleted': poll.deleted,
                    'editable': poll.editable,
                    'choices': choices,
                    'publisher_id': poll.publication.user_profile_id
                }
                result.append(choice_json)
            except Exception as ex:
                Logger.log_exception("JsonPoll.to_json_list_for_block", ex)
        return result

    @classmethod
    def poll_to_json_list(cls, query, session_user):
        result = list()
        if query is not None:
            for x in query:
                try:
                    poll = JsonPoll.poll_to_json(x)
                    if poll['editable'] and session_user is not None and session_user.user_profile_id != poll['publisher_id']:
                        poll['editable'] = False
                    result.append(poll)
                except Exception as ex:
                    Logger.log_exception("JsonPoll.poll_to_json_list", ex)
        return result

    @classmethod
    def choice_to_json(cls, item):
        result = {}
        try:
            result = {
                'choice_id': item.choice_id,
                'poll_id': item.poll_id,
                'text': item.text,
                'deleted': item.deleted,
                'vote_count': len(item.vote_set.all())
            }
        except Exception as ex:
            Logger.log_exception("JsonPoll.choice_to_json", ex)
        return result

    @classmethod
    def choice_votes_to_json(cls, item):
        result = {}
        try:
            result = {
                'choice_id': item.choice_id,
                'poll_id': item.poll_id,
                'text': item.text,
                'deleted': item.deleted,
                'vote_count': len(item.vote_set.all())
            }
        except Exception as ex:
            Logger.log_exception("JsonPoll.choice_to_json", ex)
        return result

    @classmethod
    def choice_to_json_list(cls, query):
        result = list()
        if query is not None:
            for x in query:
                try:
                    poll_choice = JsonPoll.choice_to_json(x)
                    result.append(poll_choice)
                except Exception as ex:
                    Logger.log_exception("JsonPoll.choice_to_json_list", ex)
        return result