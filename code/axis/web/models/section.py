from django.db import models
from web.models.managers.section_manager import SectionManager

class Section(models.Model):

    section_id = models.IntegerField(primary_key=True, db_column='section_id')

    name = models.CharField(max_length=30, null=False)
    deleted = models.BooleanField(default=0, null=False)

    manager = SectionManager()

    class Meta:
        app_label = 'web'
        db_table = 'section'