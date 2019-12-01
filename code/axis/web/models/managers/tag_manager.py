from django.db import models
import web
from web.helpers.db_helper import DBHelper
from web.utils.logger import Logger

class TagManager(models.Manager):

    def insert(self, tag_list, article_id):
        for tag in tag_list:
            try:
                new_tag = web.models.Tag()
                new_tag.tag_id = DBHelper.next_seq_value('tag_id_seq')
                new_tag.article_id = article_id
                new_tag.text = tag
                new_tag.deleted = False
                new_tag.save()
            except Exception as ex:
                Logger.log_exception("TagManager.insert", ex)

    def moderate(self, tag_id):
        try:
            tag = web.models.Tag.manager.get(tag_id=tag_id)
            tag.moderated = True
            tag.save()
        except Exception as ex:
            Logger.log_exception("TagManager.moderate", ex)

    def load_for_combo(self):
        result = list()
        try:
            result = self.filter(deleted=False, moderated=False).distinct('text')
        except Exception as ex:
            Logger.log_exception("TagMaanger.load_for_combo", ex)
        return result