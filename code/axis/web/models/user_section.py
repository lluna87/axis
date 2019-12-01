from django.db import models
from web.models import UserProfile
from web.models.section import Section

class UserSection(models.Model):

    user_section_id = models.IntegerField(primary_key=True, db_column='user_section_id')
    user_profile = models.ForeignKey(to=UserProfile, db_column='user_profile_id', null=False)
    section = models.ForeignKey(to=Section, db_column='section_id', null=False)

    class Meta:
        app_label = 'web'
        db_table = 'user_section'
        unique_together = ('user_profile', 'section')