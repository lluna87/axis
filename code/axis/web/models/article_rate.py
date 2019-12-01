from django.db import models
from web.models.managers.article_rate_manager import ArticleRateManager
from web.models.article import Article
from web.models.user_profile import UserProfile

class ArticleRate(models.Model):

    article = models.ForeignKey(to=Article, db_column='article_id', null=False)
    article_rate_id = models.IntegerField(primary_key=True)
    user_profile = models.ForeignKey(to=UserProfile, db_column='user_profile_id', null=False)

    rating = models.PositiveSmallIntegerField(default=0)
    date = models.DateTimeField(null=False)

    manager = ArticleRateManager()

    class Meta:
        app_label = 'web'
        db_table = 'article_rate'
        unique_together = ('article', 'user_profile')