import web
import web.helpers.db_helper as dbh
from django.db import models
from web.utils.logger import Logger

class VoteManager(models.Manager):

    def insert(self, poll_id, choice_id, user_profile_id):
        result = None
        try:
            vote = web.models.Vote()
            vote.poll_id = poll_id
            vote.choice_id = choice_id
            vote.user_profile_id = user_profile_id
            vote.vote_id = dbh.DBHelper.next_seq_value("vote_id_seq")
            vote.save()
            result = vote
        except Exception as ex:
            Logger.log_exception("VoteManager.insert", ex)
        return result