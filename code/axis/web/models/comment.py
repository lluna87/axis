import web.constants.model_const as mconst
from django.db import models
from web.models.managers.comment_manager import CommentManager
from web.models.article import Article
from web.models.user_profile import UserProfile

class Comment(models.Model):

    article = models.ForeignKey(to=Article, to_field='article_id', db_column='article_id', null=False)
    comment_id = models.IntegerField(primary_key=True, db_column='comment_id', null=False)
    user_profile = models.ForeignKey(to=UserProfile, db_column='user_profile_id', null=False)

    content = models.CharField(max_length=mconst.COMMENT_LENGTH, null=False)
    deleted = models.BooleanField(default=0, null=False)
    moderated = models.BooleanField(default=0, null=False)

    manager = CommentManager()

    class Meta:
        app_label = 'web'
        db_table = 'comment'
        unique_together = ('article', 'comment_id')
