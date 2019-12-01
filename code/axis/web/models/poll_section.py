from django.db import models
from web.models.section import Section
from web.models.poll import Poll

class PollSection(models.Model):

    poll_section_id = models.IntegerField(primary_key=True, db_column='poll_section_id')
    section = models.ForeignKey(to=Section, db_column='section_id', null=False)
    poll = models.ForeignKey(to=Poll, db_column='poll_id', null=False)

    class Meta:
        app_label = 'web'
        db_table = 'poll_section'
        unique_together = ('poll', 'section')