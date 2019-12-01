import web
from django.db import models
from web.helpers.db_helper import DBHelper
from web.utils.logger import Logger

class SourceManager(models.Manager):

    def insert(self, source_list, article_id):
        for source in source_list:
            try:
                new_source = web.models.Source()
                new_source.source_id = DBHelper.next_seq_value('source_id_seq')
                new_source.article_id = article_id
                new_source.url = source
                new_source.deleted = False
                new_source.save()
            except Exception as ex:
                Logger.log_exception("SourceManager.insert", ex)