from django.db import models
from web.models.managers.source_manager import SourceManager
from web.models.article import Article

class Source(models.Model):

    article = models.ForeignKey(to=Article, db_column='article_id', null=False)
    source_id = models.IntegerField(primary_key=True, db_column='source_id')

    url = models.CharField(max_length=2000, null=False)
    deleted = models.BooleanField(default=0, null=False)

    manager = SourceManager()

    class Meta:
        app_label = 'web'
        db_table = 'source'
        unique_together = ('article', 'source_id')