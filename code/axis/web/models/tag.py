from django.db import models
from web.models.managers.tag_manager import TagManager
from web.models.article import Article

class Tag(models.Model):

    article = models.ForeignKey(to=Article, db_column='article_id', null=False)
    tag_id = models.IntegerField(primary_key=True, db_column='tag_id')

    text = models.CharField(max_length=30, null=False)
    deleted = models.BooleanField(default=False, null=False)
    moderated = models.BooleanField(default=False, null=False)

    manager = TagManager()

    class Meta:
        app_label = 'web'
        db_table = 'tag'
        unique_together = ('article', 'tag_id')