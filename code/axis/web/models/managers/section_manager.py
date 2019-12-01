from django.db import models

import web
import web.models
from web.helpers.db_helper import DBHelper
from web.utils.logger import Logger

class SectionManager(models.Manager):

    def insert(self, name):
        result = None
        try:
            new_section = web.models.Section()
            new_section.section_id = DBHelper.next_seq_value('section_id_seq')
            new_section.name = name
            new_section.save()
            result = new_section
        except Exception as ex:
            Logger.log_exception("SecionManager.insert", ex)
        return result

    def update(self, section_data):
        result = None
        try:
            section_id = int(section_data[u'section_id'])
            section = self.get(pk=section_id)
            section.name = section_data[u'name']
            section.save()
            result = section
        except Exception as ex:
            Logger.log_exception("SectionManager.update", ex)
        return result

    def delete(self, section_id):
        try:
            section = web.models.Section.manager.get(pk=section_id)
            section.deleted = True
            section.save()
        except Exception as ex:
            Logger.log_exception("SectionManager.delete", ex)

    def add_article(self, article_id, sections):
        try:
            for section_id in sections:
                new_rel = web.models.ArticleSection()
                new_rel.article_section_id = DBHelper.next_seq_value('article_section_id_seq')
                new_rel.article_id = article_id
                new_rel.section_id = section_id
                new_rel.save()
        except Exception as ex:
            Logger.log_exception("SectionManager.add_article", ex)

    def load(self):
        result = list()
        try:
            result = self.filter(deleted=False).order_by('name')
        except Exception as ex:
            Logger.log_exception("SectionManager.load", ex)
        return result

    def load_by_article(self, article_id):
        result = list()
        try:
            rels = web.models.ArticleSection.objects.filter(article_id=article_id)
            for rel in rels:
                if (rel.section.deleted == False):
                    result.append(rel.section)
            result.sort(key=lambda x:x.name, reverse=True)
        except Exception as ex:
            Logger.log_exception("SectionManager.load", ex)
        return result

    def name_exists(self, name):
        result = False
        try:
            section = self.filter(name=name)
            if (section is not None):
                result = True
        except Exception as ex:
            Logger.log_exception("SectionManager.name_exists", ex)
        return result