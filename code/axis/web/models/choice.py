from django.db import models
from web.models.managers.choice_manager import ChoiceManager
from web.models.poll import Poll

class Choice(models.Model):

    poll = models.ForeignKey(to=Poll, db_column='poll_id', null=False)
    choice_id = models.IntegerField(primary_key=True, db_column='choice_id')

    text = models.CharField(max_length=200, null=False)
    deleted = models.BooleanField(default=0, null=False)

    manager = ChoiceManager()

    class Meta:
        app_label = 'web'
        db_table = 'choice'
        unique_together = ('poll', 'choice_id')