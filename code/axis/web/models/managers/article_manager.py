import json
import os

from django.db import models
from django.utils.timezone import utc
from django.utils.datetime_safe import datetime

import web.constants.const as const
import web.models
from web.helpers.db_helper import DBHelper
from web.utils.logger import Logger

class ArticleManager(models.Manager):

    def insert(self, user, article_data):
        result = False
        try:
            new_article = web.models.Article()
            new_article.article_id = DBHelper.next_seq_value('article_id_seq')
            new_article.author_id = article_data[u'author']
            new_article.title = article_data[u'title']
            new_article.content_summary = article_data[u'content-summary']
            new_article.body_text = article_data[u'body-text']
            new_article.deleted = False
            new_article.save()

            if new_article is not None:
                client_img_paths = json.loads(article_data[u'image_paths'])
                section_ids = json.loads(article_data[u'sections'])
                tags = json.loads(article_data[u'tags'])
                sources = json.loads(article_data[u'sources'])
                user_profile = web.models.UserProfile.manager.get(user_id=user.id)

                # IMAGES
                img_paths = list()
                for img_obj in client_img_paths:
                    img_paths.append(img_obj[u'path'])
                web.models.Image.manager.create_article_imgs(user.id, new_article, img_paths)
                # SECTIONS
                web.models.Section.manager.add_article(new_article.article_id, section_ids)
                # TAGS
                web.models.Tag.manager.insert(tags, new_article.article_id)
                # SOURCES
                web.models.Source.manager.insert(sources, new_article.article_id)
                web.models.Publication.manager.insert_article(new_article.article_id, user_profile.user_profile_id)
                result = True
        except Exception as ex:
            Logger.log_exception("ArticleManager.insert", ex)
        return result

    def update(self, article_data):
        result = None
        try:
            article_id = int(article_data[u'article_id'])
            article_db = self.get(article_id=article_id)
            author_id = int(article_data[u'author'])
            article_db.author_id = author_id
            article_db.title = article_data[u'title']
            article_db.content_summary = article_data[u'content-summary']
            article_db.body_text = article_data[u'body-text']
            article_db.save()
            result = article_db
        except Exception as ex:
            Logger.log_exception("ArticleManager.update", ex)
        return result

    def delete(self, article_id):
        try:
            article = self.get(article_id=article_id)
            article.deleted = True
            article.save()
            for tag in article.tag_set.all():
                tag.deleted = True
                tag.save()
        except Exception as ex:
            Logger.log_exception("ArticleManager.delete", ex)

    def update_sections(self, article, section_ids):
        try:
            article_section_set = article.articlesection_set.all()
            deletable_article_section_set = article_section_set.exclude(section_id__in=section_ids)
            for article_section in deletable_article_section_set:
                article_section.delete()
            for section_id in section_ids:
                try:
                    filtered_count = len(article_section_set.filter(section_id=section_id))
                    if filtered_count <= 0:
                        new_rel = web.models.ArticleSection()
                        new_rel.article_section_id = DBHelper.next_seq_value('article_section_id_seq')
                        new_rel.article_id = article.article_id
                        new_rel.section_id = section_id
                        new_rel.save()
                except Exception as ex:
                    Logger.log_exception('ArticleManager.update_sections', ex)
        except Exception as ex:
            Logger.log_exception('ArticleManager.update_sections', ex)

    def update_tags(self, article, uploaded_tags):
        try:
            deletable_tags = article.tag_set.exclude(text__in=uploaded_tags)
            for d_tag in deletable_tags:
                d_tag.delete()
            for tag in uploaded_tags:
                filtered_count = len(article.tag_set.filter(text=tag))
                try:
                    if filtered_count <= 0:
                        new_tag = web.models.Tag()
                        new_tag.tag_id = DBHelper.next_seq_value('tag_id_seq')
                        new_tag.deleted = False
                        new_tag.article_id = article.article_id
                        new_tag.text = tag
                        new_tag.save()
                except Exception as ex:
                    Logger.log_exception('ArticleManager.update_tags', ex)
        except Exception as ex:
            Logger.log_exception('ArticleManager.update_tags', ex)

    def update_sources(self, article, uploaded_sources):
        try:
            deletable_sources = article.source_set.exclude(url__in=uploaded_sources)
            for d_source in deletable_sources:
                d_source.delete()
            for source_url in uploaded_sources:
                filtered_count = len(article.source_set.filter(url=source_url))
                try:
                    if filtered_count <= 0:
                        new_source = web.models.Source()
                        new_source.article_id = article.article_id
                        new_source.source_id = DBHelper.next_seq_value('source_id_seq')
                        new_source.deleted = False
                        new_source.url = source_url
                        new_source.save()
                except Exception as ex:
                    Logger.log_exception('ArticleManager.update_sources', ex)
        except Exception as ex:
            Logger.log_exception('ArticleManager.update_sources', ex)

    def increase_visits(self, article):
        try:
            article.visits += 1
            article.save()
        except Exception as ex:
            Logger.log_exception("ArticleManager.increase_visits", ex)
        return article

    @classmethod
    def get_most_recent_articles(cls):
        publications = web.models.Publication.manager.all().order_by('-date')[:6]
        recent_articles = list()
        for item in publications:
            recent_articles.append(item.article)
        return recent_articles

    def load(self, **kwargs):
        try:
            query = self.filter(deleted=False).order_by('-article_id')
            if 'ignore_id' in kwargs:
                query = query.exclude(article_id=kwargs['ignore_id'])
            if 'section_id' in kwargs:
                query = query.filter(articlesection__section_id=kwargs['section_id'])
            if 'article_count' in kwargs:
                query = query[:kwargs['article_count']]
        except Exception as ex:
            query = list()
            Logger.log_exception("ArticleManager.load", ex)
        return query

    def load_suggested(self, user_profile, **kwargs):
        try:
            args = { }
            result = self.filter(deleted = False)
            if 'ignore_id' in kwargs:
                result = self.exclude(article_id=kwargs['ignore_id'])
            user_section_set = user_profile.usersection_set.all()
            args['articlesection__section_id__in'] = user_section_set
            result = result.filter(**args).distinct('article_id').order_by('-article_id')
            if 'article_count' in kwargs:
                result = result[:kwargs['article_count']]
        except Exception as ex:
            result = list()
            Logger.log_exception("ArticleManager.load", ex)
        return result

    def load_for_start(self):
        try:
            kwargs = {
                'deleted': False
            }
            result = self.filter(**kwargs).distinct('article_id').order_by('-article_id')[:const.NEWS_TAB_ARTICLE_COUNT]
        except Exception as ex:
            result = list()
            Logger.log_exception("ArticleManager.load_for_start", ex)
        return result

    def load_by_user_sections(self, user_profile):
        try:
            kwargs = {
                'deleted': False
            }
            user_section_set = user_profile.usersection_set.all()
            kwargs['articlesection__section_id__in'] = user_section_set
            result = self.filter(**kwargs).distinct('article_id').order_by('-article_id')[:const.NEWS_TAB_ARTICLE_COUNT]
        except Exception as ex:
            result = list()
            Logger.log_exception("ArticleManager.load_by_user_sections", ex)
        return result
		
    @staticmethod
    def clear_img_temp_folder(user_id):
        try:
            destination = const.TEMP_ARTICLE_IMG_PATH + "user_" + str(user_id) + "\\"
            if os.path.exists(destination):
                for name in os.listdir(destination):
                    os.remove(destination + "\\" + name)
        except Exception as ex:
            Logger.log_exception("clear_img_temp_folder", ex)

    def search(self, search_data):
        query = None
        try:
            kwargs = {
                    'deleted': False
                }
            if u'title' in search_data and u'title' in search_data and not search_data[u'title'] == u'':
                kwargs['title__icontains'] = search_data[u'title']
            if u'sections-check' in search_data and u'sections' in search_data and len(json.loads(search_data[u'sections'])) > 0:
                kwargs['articlesection__section_id__in'] = json.loads(search_data[u'sections'])
            if u'tags-check' in search_data and u'tags' in search_data and json.loads(search_data[u'tags']).length > 0:
                tag_query = web.models.Tag.manager.filter(text__in=json.loads(search_data[u'tags']), deleted=False)
                kwargs['tag__in'] = tag_query
            if u'author-check' in search_data and u'author' in search_data and not search_data[u'author'] == u'':
                if query is None: query = web.models.Article.manager.filter(deleted=False)
                kwargs['author_id'] = json.loads(search_data[u'author'])
            if u'publisher-check' in search_data and u'publisher' in search_data and not search_data[u'publisher'] == u'':
                if query is None: query = web.models.Article.manager.filter(deleted=False)
                publications = web.models.Publication.manager.filter(user_profile_id=json.loads(search_data[u'publisher']))
                kwargs['publication__in'] = publications
            if u'date-from-check' in search_data and u'date-from' in search_data and not search_data[u'date-from'] == u'':
                if query is None: query = web.models.Article.manager.filter(deleted=False)
                date_array = search_data[u'date-from'].split('/')
                date_from = datetime(int(date_array[2]),int(date_array[1]),int(date_array[0]), tzinfo=utc)
                publications = web.models.Publication.manager.filter(date__gte=date_from)
                kwargs['publication__in'] = publications
            if u'date-to-check' in search_data and u'date-to' in search_data and not search_data[u'date-to'] == u'':
                if query is None: query = web.models.Article.manager.filter(deleted=False)
                date_array = search_data[u'date-to'].split('/')
                date_to = datetime(int(date_array[2]),int(date_array[1]),int(date_array[0]), tzinfo=utc)
                publications = web.models.Publication.manager.filter(date__lte=date_to)
                kwargs['publication__in'] = publications
            if (len(kwargs.keys()) > 1):
                query = web.models.Article.manager.filter(**kwargs)
        except Exception as ex:
            Logger.log_exception("ArticleManager.search", ex)
        return query