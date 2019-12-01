
# -*- coding: utf-8 -*-
import HTMLParser
import time
from web.helpers.datetime_helper import DateTimeHelper
from web.models import Section, Image
import web.constants.const as const
from web.utils.logger import Logger

class JsonArticle(object):

    @staticmethod
    def to_json(article):
        article_section = article.articlesection_set.all()
        sections_display = ""
        sections = list()
        for article_section in article_section:
            if sections_display == "": sections_display = article_section.section.name
            else: sections_display += ", " + article_section.section.name
            try:
                section_json = {
                    'section_id': article_section.section_id,
                    'name': article_section.section.name
                }
                sections.append(section_json)
            except:
                pass
        try: publication_date = DateTimeHelper.serialize(article.publication.date)
        except: publication_date = None
        try: publish_user_id = article.publication.user_profile.user_id
        except: publish_user_id = 0
        result = {
            'article_id': article.article_id,
            'author_id': article.author_id,
            'title': article.title,
            # 'title': unicode(article.title).encode('utf8', 'replace'),
            'content_summary': article.content_summary,
            # 'content_summary': unicode(article.content_summary).encode('utf8', 'replace'),
            'body_text': article.body_text,
            #'body_text': unicode(article.body_text).encode('utf8', 'replace'),
            'deleted': article.deleted,
            'visits': article.visits,
            'date': publication_date,
            'sections_display': sections_display,
            'sections': sections,
            'publish_user_id': publish_user_id
        }
        try:
            html_parser = HTMLParser.HTMLParser()
            result['title'] = html_parser.unescape(result['title'])
            result['content_summary'] = html_parser.unescape(result['content_summary'])
            result['body_text'] = html_parser.unescape(result['body_text'])
        except Exception as ex:
            Logger.log_exception("json_article.to_json", ex)
        return result

    @staticmethod
    def to_json_for_search(article):
        sections = list()
        for article_section in article.articlesection_set.all():
            section = article_section.section
            sections.append({
                    'section_id': section.section_id,
                    'name': section.name
                })
        result = {
            'article_id': article.article_id,
            'title': article.title,
            'content_summary': article.content_summary,
            'sections': sections
        }
        try:
            html_parser = HTMLParser.HTMLParser()
            result['title'] = html_parser.unescape(result['title'])
            result['content_summary'] = html_parser.unescape(result['content_summary'])
        except Exception as ex:
            Logger.log_exception("json_article.to_json_for_search", ex)
        return result

    @staticmethod
    def to_json_list(query):
        result = list()
        if query is not None:
            for item in query:
                article = JsonArticle.to_json(item)
                result.append(article)
        return result

    @staticmethod
    def to_json_list_for_search(query):
        result = list()
        if query is not None:
            for item in query:
                article = JsonArticle.to_json_for_search(item)
                result.append(article)
        return result

    @staticmethod
    def to_json_for_pager(article):
        sections_query = Section.manager.load_by_article(article.article_id)
        sections_display = ""
        sections = list()
        for section in sections_query:
            try:
                if sections_display == "": sections_display = section.name
                else: sections_display += ", " + section.name
                sections.append({
                    'section_id': section.section_id,
                    'name': section.name
                })
            except Exception as ex:
                Logger.log_exception("JsonArticle.to_json_for_pager", ex)
        try:
            article_imgs_qset = Image.manager.load(article.article_id)
            article_main_path = const.ARTICLES_IMG_PATH_TPL + "article_" + str(article.article_id) + "/"
            main_img_query = article_imgs_qset.filter(is_main=True)
            main_image = None
            if main_img_query.count() > 0:
                main_image = main_img_query[0]
            elif article_imgs_qset.count() > 0:
                main_image = article_imgs_qset[0]
            if main_image is not None:
                img_path = article_main_path + main_image.path + "#" + str(int(round(time.time() * 1000)))
            else:
                img_path = const.EMPTY_IMG_PATH
        except Exception as ex:
            Logger.log_exception('to_json_for_pager', ex)
            img_path = const.EMPTY_IMG_PATH
        result = {
            'article_id': article.article_id,
            'title': unicode(article.title).encode('utf8', 'replace'),
            'content_summary': unicode(article.content_summary).encode('utf8', 'replace'),
            'sections_display': sections_display,
            'image_path' : img_path,
            'sections': sections
        }
        try:
            html_parser = HTMLParser.HTMLParser()
            result['title'] = html_parser.unescape(result['title'])
            result['content_summary'] = html_parser.unescape(result['content_summary'])
        except:
            pass
        return result

    @classmethod
    def to_json_list_for_pager(cls, articles):
        result = list()
        if articles is not None:
            for item in articles:
                try:
                    article = JsonArticle.to_json_for_pager(item)
                    result.append(article)
                except Exception as ex:
                    Logger.log_exception("JsonArticle.to_json_list_for_pager", ex)
        return result
