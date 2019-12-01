from django.db import models
from web.models.article import Article
from web.models.section import Section


class ArticleSection(models.Model):

    article_section_id = models.IntegerField(primary_key=True, db_column='article_section_id')
    section = models.ForeignKey(to=Section, db_column='section_id', null=False)
    article = models.ForeignKey(to=Article, db_column='article_id', null=False)

    class Meta:
        app_label = 'web'
        db_table = 'article_section'
        unique_together = ('article', 'section')