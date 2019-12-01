import web
from django.db import models
from web.helpers.db_helper import DBHelper
from django.utils.datetime_safe import datetime
from django.utils.timezone import utc
from web.utils.logger import Logger


class PublicationManager(models.Manager):

    def insert_article(self, article_id, user_profile_id):
        try:
            publication = web.models.Publication()
            publication.publication_id = DBHelper.next_seq_value('publication_id_seq')
            publication.deleted = False
            publication.article_id = article_id
            publication.user_profile_id = user_profile_id
            publication.date = datetime.utcnow().replace(tzinfo=utc)
            publication.save()
        except Exception as ex:
            Logger.log_exception("PublicationManager.insert_article", ex)

    def insert_poll(self, poll_id, user_profile_id):
        try:
            publication = web.models.Publication()
            publication.publication_id = DBHelper.next_seq_value('publication_id_seq')
            publication.deleted = False
            publication.poll_id = poll_id
            publication.user_profile_id = user_profile_id
            publication.date = datetime.utcnow().replace(tzinfo=utc)
            publication.save()
        except Exception as ex:
            Logger.log_exception("PublicationManager.insert_poll", ex)