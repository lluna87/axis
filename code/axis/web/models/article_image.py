from django.db import models
from web.models.article import Article
from web.models.image import Image

class ArticleImage(models.Model):

    article = models.OneToOneField(Article, null=True, db_column='article_id')
    image = models.ForeignKey(Image, null=True, unique=True, db_column='image_id')

    class Meta:
        app_label = 'web'
        db_table = 'article_image'
        unique_together = ('article', 'image')