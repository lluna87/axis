from django.db import models
from web.models.managers.vote_manager import VoteManager
from web.models.poll import Poll
from web.models.choice import Choice
from web.models.user_profile import UserProfile

class Vote(models.Model):

    poll = models.ForeignKey(to=Poll, to_field='poll_id', db_column='poll_id', null=False)
    choice = models.ForeignKey(to=Choice, to_field='choice_id', db_column='choice_id', null=False)
    vote_id = models.IntegerField(primary_key=True, db_column='vote_id')
    user_profile = models.ForeignKey(to=UserProfile, db_column='user_profile_id', null=False)
    deleted = models.BooleanField(default=0, null=False)
    manager = VoteManager()

    class Meta:
        app_label = 'web'
        db_table = 'vote'
        unique_together = ('poll', 'vote_id', 'choice')