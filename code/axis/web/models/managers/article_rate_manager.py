from django.db import models
import web
from web.utils.logger import Logger
import web.helpers.db_helper as db_h
from django.utils.datetime_safe import datetime
from django.utils.timezone import utc

class ArticleRateManager(models.Manager):

    def get_average(self, article_id):
        result = 0
        try:
            query = self.filter(article_id=article_id)
            count = 0
            total = 0
            for item in query:
                count += 1
                total += item.rating
            if count > 0:
                result = total / count
        except Exception as ex:
            Logger.log_exception("ArticleRateManager.get_average", ex)
        return result

    def user_rated(self, article_id, user_profile_id):
        query = self.filter(article_id=article_id, user_profile_id=user_profile_id)
        return query.count() > 0

    def insert(self, article_id, user_profile_id, value):
        return_value = 0
        try:
            article_rate = web.models.ArticleRate()
            article_rate.article_rate_id = db_h.DBHelper.next_seq_value('article_rate_id_seq')
            article_rate.article_id = article_id
            article_rate.user_profile_id = user_profile_id
            article_rate.date = datetime.utcnow().replace(tzinfo=utc)
            article_rate.rating = value
            article_rate.save()
            return_value = self.get_average(article_id)
        except Exception as ex:
            Logger.log_exception("ArticleRateManager.insert", ex)
        return return_value