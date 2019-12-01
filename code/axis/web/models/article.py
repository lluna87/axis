from django.db import models
from web.models import Author
from web.models.managers.article_manager import ArticleManager

class Article(models.Model):

    article_id = models.IntegerField(primary_key=True)
    author = models.ForeignKey(Author, null=True)

    title = models.CharField(max_length=80)
    content_summary = models.CharField(max_length=1000)
    body_text = models.CharField(max_length=15000)
    visits = models.BigIntegerField(default=0)
    deleted = models.BooleanField(default=0, null=False)

    manager = ArticleManager()

    class Meta:
        app_label = 'web'
        db_table = 'article'