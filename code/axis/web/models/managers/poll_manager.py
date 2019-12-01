from django.db import models
import web.helpers.db_helper as dbh
import web
import web.helpers.datetime_helper as dateh
from web.utils.logger import Logger


class PollManager(models.Manager):

    def insert(self, title, period_start_str, period_end_str, description, multiple):
        new_poll = None
        try:
            new_poll = web.models.Poll()
            new_poll.poll_id = dbh.DBHelper.next_seq_value('poll_id_seq')
            new_poll.title = title
            new_poll.voting_period_start = dateh.DateTimeHelper.convert_input_str_to_datetime(period_start_str)
            new_poll.voting_period_end = dateh.DateTimeHelper.convert_input_str_to_datetime(period_end_str)
            new_poll.description = description
            new_poll.multiple_choice = multiple
            new_poll.save()
        except Exception as ex:
            Logger.log_exception("PollManager.insert", ex)
        return new_poll

    def update(self, poll_id, title, period_start_str, period_end_str, description, multiple):
        poll = None
        try:
            poll = web.models.Poll.manager.get(poll_id=poll_id)
            poll.title = title
            poll.voting_period_start = dateh.DateTimeHelper.convert_input_str_to_datetime(period_start_str)
            poll.voting_period_end = dateh.DateTimeHelper.convert_input_str_to_datetime(period_end_str)
            poll.description = description
            poll.multiple_choice = multiple
            poll.save()
        except Exception as ex:
            Logger.log_exception("PollManager.update", ex)
        return poll

    def update_sections(self, poll, section_ids):
        try:
            poll_section_set = poll.pollsection_set.all()
            deletable_poll_section_set = poll_section_set.exclude(section_id__in=section_ids)
            for poll_section in deletable_poll_section_set:
                poll_section.delete()
            for section_id in section_ids:
                try:
                    filtered_count = len(poll_section_set.filter(section_id=section_id))
                    if filtered_count <= 0:
                        new_rel = web.models.PollSection()
                        new_rel.poll_section_id = dbh.DBHelper.next_seq_value('poll_section_id_seq')
                        new_rel.poll_id = poll.poll_id
                        new_rel.section_id = section_id
                        new_rel.save()
                except Exception as ex:
                    Logger.log_exception('PollManager.update_sections', ex)
        except Exception as ex:
            Logger.log_exception('PollManager.update_sections', ex)