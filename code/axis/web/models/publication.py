from django.db import models
from web.models.managers.publication_manager import PublicationManager
from web.models.article import Article
from web.models.poll import Poll
from web.models.user_profile import UserProfile

class Publication(models.Model):

    publication_id = models.IntegerField(primary_key=True, db_column='publication_id')
    article = models.OneToOneField(to=Article, db_column='article_id', null=True)
    poll = models.OneToOneField(to=Poll, db_column='poll_id', null=True)
    user_profile = models.ForeignKey(to=UserProfile, db_column='user_profile_id', null=False)
    date = models.DateTimeField(db_column='date', null=False)

    manager = PublicationManager()

    class Meta:
        app_label = 'web'
        db_table = 'publication'