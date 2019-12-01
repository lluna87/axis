from django.db import models
from web.models.managers.poll_manager import PollManager

class Poll(models.Model):

    poll_id = models.IntegerField(primary_key=True, db_column='poll_id')

    title = models.CharField(max_length=60, null=False)
    description = models.CharField(max_length=300, null=False)
    multiple_choice = models.BooleanField(default=False, null=False)
    voting_period_start = models.DateTimeField(null=False)
    voting_period_end = models.DateTimeField(null=False)
    deleted = models.BooleanField(default=False, null=False)
    editable = models.BooleanField(default=True, null=False)

    manager = PollManager()

    class Meta:
        app_label = 'web'
        db_table = 'poll'