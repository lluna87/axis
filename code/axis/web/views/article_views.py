# -*- coding: utf-8 -*-

import json

from django.views.decorators.http import require_GET, require_POST
from django.http import StreamingHttpResponse, HttpResponse
from django.utils.datetime_safe import datetime
from django.template import RequestContext
from django.shortcuts import render_to_response
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt

import web
import web.constants.const as const
from web.models.forms.article_form import ArticleForm
from web.utils.converters.json_article import JsonArticle
from web.utils.converters.json_section import JsonSection
from web.utils.converters.json_source import JsonSource
from web.utils.converters.json_tag import JsonTag
from web.utils.decorators.custom_decorators import requires_login
from web.utils.logger import Logger


@require_GET
@method_decorator(csrf_exempt)
def load_articles(request, *args, **kwargs):
    try:
        query = web.models.Article.manager.load()
        result = JsonArticle.to_json_list(query)
    except Exception as ex:
        result = list()
        Logger.log_exception("article_views.load_articles", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def load_start_tab_articles(request, *args, **kwargs):
    result = list()
    try:
        if request.user.is_authenticated():
            user_profile = web.models.UserProfile.manager.get_by_user_id(request.user.id)
            articles = web.models.Article.manager.load_by_user_sections(user_profile)
        else:
            articles = web.models.Article.manager.load_for_start()
        result = JsonArticle.to_json_list_for_pager(articles)
    except Exception as ex:
        Logger.log_exception("article_views.load_start_tab_articles.post", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def load_suggested_articles(request, *args, **kwargs):
    result = list()
    try:
        kwargs = {'article_count': const.SUGGESTED_ARTICLE_COUNT}
        if (u'actual_article_id' in request.POST and not request.POST[u'actual_article_id'] == u''):
            kwargs['ignore_id'] = int(request.POST[u'actual_article_id'])
        if request.user.is_authenticated():
            user_profile = web.models.UserProfile.manager.get_by_user_id(request.user.id)
            query = web.models.Article.manager.load_suggested(user_profile, **kwargs)
            if (len(query) == 0):
                query = web.models.Article.manager.load(**kwargs)
        else:
            query = web.models.Article.manager.load(**kwargs)
        result = JsonArticle.to_json_list_for_pager(query)
    except Exception as ex:
        Logger.log_exception("article_views.load_suggested_articles.post", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def load_preview_article_list(request, *args, **kwargs):
    try:
        kwargs = {}
        if u'section_id' in request.POST:
            kwargs['section_id'] = json.loads(request.POST[u'section_id'])
        query = web.models.Article.manager.load(**kwargs)
        result = JsonArticle.to_json_list_for_pager(query)
    except Exception as ex:
        result = list()
        Logger.log_exception("article_views.load_preview_article_list", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def insert(request, *args, **kwargs):
    article_data = request.POST
    try:
        result = web.models.Article.manager.insert(request.user, article_data)
        web.models.Article.manager.clear_img_temp_folder(request.user.id)
        return HttpResponse(json.dumps(result), content_type="application/json")
    except Exception as ex:
        Logger.log_exception("articleviews.Insert.post", ex)
        return HttpResponse(json.dumps(False), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def update(request, *args, **kwargs):
    result = {}
    try:
        article_data = request.POST
        article = web.models.Article.manager.update(article_data)
        if (article is not None):
            # SECTIONS
            section_ids = json.loads(article_data[u'sections'])
            web.models.Article.manager.update_sections(article, section_ids)
            # TAGS
            uploaded_tags = json.loads(article_data[u'tags'])
            web.models.Article.manager.update_tags(article, uploaded_tags)
            # SOURCES
            uploaded_sources = json.loads(article_data[u'sources'])
            web.models.Article.manager.update_sources(article, uploaded_sources)
            # IMAGES
            image_paths = json.loads(article_data[u'image_paths'])
            if u'art_deletable_img_ids' in request.session:
                deletable_img_ids = request.session[u'art_deletable_img_ids']
            else:
                deletable_img_ids = list()
            request.session.modified = True
            web.models.Image.manager.update_article_images(request.user.id, article, image_paths, deletable_img_ids)
            result = JsonArticle.to_json(article)
    except Exception as ex:
        Logger.log_exception("article_views.Update", ex)
    web.models.Article.manager.clear_img_temp_folder(request.user.id)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def delete(request, *args, **kwargs):
    result = True
    try:
        article_id = int(request.POST[u'article_id'])
        web.models.Article.manager.delete(article_id=article_id)
    except Exception as ex:
        result = False
        Logger.log_exception("article_views.delete", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def edit(request, *args, **kwargs):
    result = {}
    try:
        article_id = int(request.POST[u'article_id'])
        article = web.models.Article.manager.get(article_id=article_id)
        result = JsonArticle.to_json(article)
    except Exception as ex:
        Logger.log_exception("article_view.Edit", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@requires_login
@method_decorator(csrf_exempt)
def create_article(request, *args, **kwargs):
    try:
        article_form = ArticleForm()
        web.models.Article.manager.clear_img_temp_folder(request.user.id)
    except Exception as ex:
        Logger.log_exception("article_views.create_article", ex)
    return render_to_response('web/editor_templates/article/article_editor.html', locals(), context_instance=RequestContext(request))

@require_GET
@requires_login
@method_decorator(csrf_exempt)
def edit_article(request, *args, **kwargs):
    request.session[u'art_deletable_img_ids'] = list()
    try:
        web.models.Article.manager.clear_img_temp_folder(request.user.id)
    except Exception as ex:
        Logger.log_exception("article_views.edit_article", ex)
    try:
        article_id = int(request.GET[u'article_id'])
        article_db = web.models.Article.manager.get(article_id=article_id)
        article = JsonArticle.to_json(article_db)
        article_tags = JsonTag.to_json_for_select(article_db.tag_set.all().order_by('text'))
        article_sources = JsonSource.to_json_for_select(article_db.source_set.all().order_by('url'))
        sections_db = web.models.Section.manager.load_by_article(article_id=article_id)
        article_sections = JsonSection.to_json_for_combo(sections_db)
        update_mode = True
    except Exception as ex:
        Logger.log_exception("article_views.edit_article", ex)
    return render_to_response('web/editor_templates/article/article_editor.html', locals(),
                              context_instance=RequestContext(request))

@require_GET
@method_decorator(csrf_exempt)
def read_article(request, *args, **kwargs):
    try:
        is_publisher = is_reader = is_administrator = False
        if  not request.user is None:
            for x in request.user.groups.all():
                if x.name == 'administrator': is_administrator = True
                if x.name == 'reader': is_reader = True
                if x.name == 'publisher': is_publisher = True
        article_id = request.GET[u'article_id']
    except Exception as ex:
        Logger.log_exception("article_views.read_article", ex)
    return render_to_response('web/reading/article_read.html', locals(), context_instance=RequestContext(request))

@require_GET
@method_decorator(csrf_exempt)
def load_content(request, *args, **kwargs):
    if request.user is not None:
        for x in request.user.groups.all():
            if x.name == 'administrator': is_administrator = True
            if x.name == 'reader': is_reader = True
            if x.name == 'publisher': is_publisher = True
    article_data = None
    try:
        article_id = request.GET[u'article_id']
        article = {}
        article_images = []
        try:
            # Cargar Articulo
            article_db = web.models.Article.manager.get(article_id=article_id)
        except Exception as ex:
            return render_to_response('web/reading/article_not_found.html', locals(), context_instance=RequestContext(request))
        # Cargar imagenes
        article_images = web.models.Image.manager.load(article_id=article_db.article_id)
        # Obtener path de imagen principal
        main_img_path = web.models.Image.manager.get_main_img_path(article_db.article_id, article_images)
        # Generar lista de JSON de imagenes
        imgs_json = web.models.Image.manager.get_article_json_list(article_db.article_id, article_images)
        # Cargar etiquetas de articulo
        tags_db = web.models.Tag.manager.filter(article_id=article_id, moderated=False, deleted=False)
        # Generar JSON de etiquetas
        tags_json = JsonTag.to_json_list(tags_db)
        # Cargar fuentes de articulo
        sources_db = web.models.Source.manager.filter(article_id=article_id, deleted=False)
        # Generar JSON de fuentes
        sources_json = JsonSource.to_json_list(sources_db)
        # Otener informacion de publicacion
        try:
            pub_user = article_db.publication.user_profile.user
            pub_user_id = article_db.publication.user_profile.user.id
            pub_user_profile_id = article_db.publication.user_profile.user_profile_id
            publisher_display = pub_user.first_name + " " + pub_user.last_name
            pub_date = article_db.publication.date
        except Exception as ex:
            article_date = ""
            pub_user_id = 0
            pub_user_profile_id = 0
            publisher_display = ""
            pub_date = datetime.now()
            Logger.log_exception("article_views.load_content.get", ex)
        # Obtener informacion de publicador
        publisher_image = ""
        try:
            pub_user = article_db.publication.user_profile
            publisher_value = web.models.UserProfile.manager.get_publisher_average(pub_user.user_profile_id)
            if (pub_user.profile_image is not None):
                publisher_image = const.PROFILES_IMG_PATH_URL + pub_user.profile_image.path
        except Exception as ex:
            publisher_value = 0
            Logger.log_exception("article_views.load_content.get", ex)
        #  Obtener informacion de autor
        try:
            author = article_db.author
            if author.user_profile is None:
                author_display = author.first_name + " " + author.last_name
            else:
                author_display = author.user_profile.user.first_name + " " + author.user_profile.user.last_name
        except Exception as ex:
            author_display = ""
            Logger.log_exception("article_views.load_content.get", ex)
        author_image = ""
        try:
            author = article_db.author
            author_id = author.author_id
            author_value = web.models.Author.manager.get_average(author.author_id)
            if author.user_profile is not None:
                author_user_profile_id = author.user_profile_id
                author_user_id = author.user_profile.user.id
            else:
                author_user_profile_id = 0
                author_user_id = 0
            if (author.profile_image is not None):
                author_image = const.PROFILES_IMG_PATH_URL + author.profile_image.path
        except Exception as ex:
            author_id = 0
            author_value = 0
            author_user_profile_id = 0
            author_user_id = 0
            Logger.log_exception("article_views.load_content.get", ex)
        # Obtener valoracion de articulo
        value = web.models.ArticleRate.manager.get_average(article_db.article_id)
        # Verificar si el usuario valoro el articulo
        user_id = request.user.id
        user_rated_article = user_rated_author = user_rated_publisher = False
        if user_id is not None:
            try:
                user_profile = web.models.UserProfile.manager.get(user_id=user_id)
                user_rated_article = web.models.ArticleRate.manager.user_rated(article_db.article_id, user_profile.user_profile_id)
            except Exception as ex:
                Logger.log_exception("article_views.load_content.get", ex)

        # Actualizar visitas
        article_db = web.models.Article.manager.increase_visits(article=article_db)
        # Crear JSON
        article = JsonArticle.to_json(article_db)

        # Crear objeto Json de contenido
        article_data = {
            'article': article,
            'article_images':imgs_json,
            'image_count': len(imgs_json),
            'main_img_path':main_img_path,
            'tags':tags_json,
            'sources':sources_json,
            'value' : value,
            'pub_user_id': pub_user_id,
            'pub_user_profile_id':pub_user_profile_id,
            'pub_date':pub_date,
            'publisher_display': publisher_display,
            'publisher_value': publisher_value,
            'publisher_image': publisher_image,
            'author_id': author_id,
            'author_display': author_display,
            'author_value': author_value,
            'author_image': author_image,
            'user_rated_article': user_rated_article,
            'author_user_profile_id': author_user_profile_id,
            'author_user_id': author_user_id
        }
    except Exception as ex:
        Logger.log_exception("article_views.load_content", ex)

    return render_to_response('web/reading/article_content_display.html', locals(), context_instance=RequestContext(request))

@require_GET
@method_decorator(csrf_exempt)
def search(request, *args, **kwargs):
    try:
        if u'term' in request.GET: search_term = request.GET[u'term']
        if u'prefilter' in request.GET: search_prefilter = request.GET[u'prefilter']
    except Exception as ex:
        Logger.log_exception("article_views.search", ex)
    return render_to_response('web/search/article_search.html', locals(), context_instance=RequestContext(request))

@require_GET
@method_decorator(csrf_exempt)
def search_content(request, *args, **kwargs):
    try:
        if u'term' in request.GET: search_term = request.GET[u'term']
        if u'prefilter' in request.GET: search_prefilter = int(request.GET[u'prefilter'])
    except Exception as ex:
        Logger.log_exception("article_views.search_content", ex)
    return render_to_response('web/search/article_search_content.html', locals(), context_instance=RequestContext(request))

@require_POST
@method_decorator(csrf_exempt)
def search_result(request, *args, **kwargs):
    post = request.POST
    try:
        search_query = web.models.Article.manager.search(post)
    except Exception as ex:
        search_query = list()
        Logger.log_exception("article_views.search_result", ex)
    result = JsonArticle.to_json_list_for_search(search_query)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def value(request, *args, **kwargs):
    op_result = False
    article = None
    article_value = 0
    author_value = 0
    publisher_value = 0
    try:
        article_id = request.POST[u'article_id']
        value = request.POST[u'value']
        article = web.models.Article.manager.get(article_id=article_id)
        user_profile = web.models.UserProfile.manager.get(user_id=request.user.id)
        user_rated = web.models.ArticleRate.manager.filter(article_id=article.article_id, user_profile_id= user_profile.user_profile_id)
        if user_rated.count() == 0:
            article_value = web.models.ArticleRate.manager.insert(article.article_id, user_profile.user_profile_id, value)
            op_result = True
    except Exception as ex:
        Logger.log_exception("article_views.Value.post", ex)
    if (article is not None):
        try:
            author_value = web.models.Author.manager.get_average(article.author.author_id)
            publisher_value = web.models.UserProfile.manager.get_publisher_average(article.publication.user_profile.user_profile_id)
        except Exception as ex:
            Logger.log_exception("article_views.Value.post", ex)
    result = {
        'op_result':op_result,
        'article_value':article_value,
        'author_value':author_value,
        'publisher_value':publisher_value
    }
    return HttpResponse(json.dumps(result), content_type="application/json")