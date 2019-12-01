from django.db import models
import web
import web.helpers.db_helper as db_h
from web.utils.logger import Logger

class CommentManager(models.Manager):

    def insert(self, article_id, user_profile_id, content):
        try:
            comment = web.models.Comment()
            comment.comment_id = db_h.DBHelper.next_seq_value('comment_id_seq')
            comment.article_id = article_id
            comment.content = content
            comment.user_profile_id = user_profile_id
            comment.save()
            return comment
        except Exception as ex:
            Logger.log_exception("CommentManager", ex)

    def delete(self, article_id, comment_id):
        result = False
        try:
            comment = self.get(article_id=article_id, comment_id=comment_id)
            comment.deleted = True
            comment.save()
            result = True
        except Exception as ex:
            Logger.log_exception("CommentManager.delete", ex)
        return result

    def moderate(self, comment_id):
        try:
            comment = web.models.Comment.manager.get(comment_id=comment_id)
            comment.moderated = True
            comment.save()
        except Exception as ex:
            Logger.log_exception("CommentManager.moderate", ex)

    def load(self, **kwargs):
        try:
            local_kwargs = { 'deleted':False }
            if 'last_id' in kwargs:
                local_kwargs['comment_id__lt'] = kwargs['last_id']
            if 'article_id' in kwargs:
                local_kwargs['article_id'] = kwargs['article_id']

            kwargs = local_kwargs
            query = self.filter(**kwargs).order_by('-comment_id')
        except Exception as ex:
            query = list()
            Logger.log_exception("ArticleManager.load", ex)
        return query