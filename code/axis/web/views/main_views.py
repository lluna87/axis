# -*- coding: utf-8 -*-
import json

from django.contrib.auth import login, logout
from django.contrib.auth.models import User
from django.http import HttpResponseRedirect, HttpResponse
from django.views.decorators.http import require_GET, require_POST

from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator
from django.shortcuts import render_to_response
from django.template.context import RequestContext

from web.models.forms.login_form import LoginForm
from web.utils.converters.json_user_profile import JsonUserProfile
from web.utils.decorators.custom_decorators import requires_login
from web.utils.logger import Logger
import web.models

@require_GET
@method_decorator(csrf_exempt)
def main_page(request, *args, **kwargs):
    if  not request.user is None:
        is_publisher = is_reader = is_administrator = False
        for x in request.user.groups.all():
            if x.name == 'administrator': is_administrator = True
            if x.name == 'reader': is_reader = True
            if x.name == 'publisher': is_publisher = True
            #context_instance=RequestContext(request)
        if is_administrator or is_publisher:
            return HttpResponseRedirect('/main_admin/', locals())
        else:
            return render_to_response('web/main.html', locals(), context_instance=RequestContext(request))
    else:
        login_form = LoginForm()
        return render_to_response('web/account/login.html', locals(), context_instance=RequestContext(request))


@require_GET
@requires_login
@method_decorator(csrf_exempt)
def main_page_admin(request, *args, **kwargs):
    is_publisher = is_reader = is_administrator = False
    groups = request.user.groups.all()
    for x in groups:
        if x.name == 'administrator': is_administrator = True
        if x.name == 'reader': is_reader = True
        if x.name == 'publisher': is_publisher = True
        #context_instance=RequestContext(request)
    return render_to_response('web/main_admin.html', locals(), context_instance=RequestContext(request))


@require_GET
@method_decorator(csrf_exempt)
def login_page(request, *args, **kwargs):
    if request.user.is_authenticated():
        return HttpResponseRedirect('/')
    else:
        login_form = LoginForm()
        return render_to_response('web/account/login.html', locals(), context_instance=RequestContext(request))

@require_POST
@method_decorator(csrf_exempt)
def login_action(request, *args, **kwargs):
    json_result = { 'is_admin': False, 'next_route': '/', 'valid_password': False, 'valid_user': False }
    user_email = request.POST['email']
    user_password = request.POST['password']
    try:
        user = User.objects.get(email=user_email)
        user_profile = web.models.UserProfile.manager.get(user_id=user.id)
        if user_profile.deleted: raise Exception("Usuario inexistente")
        json_result['valid_user'] = True
        json_result['valid_password'] = False
        json_result['is_admin'] = False
        json_result['next_route'] = '/login/'
        if user.check_password(user_password) or user_password == user.password:
            json_result['valid_password'] = True
            user.backend = 'django.contrib.auth.backends.ModelBackend'
            login(request, user)
            if user.groups.filter(name='administrator').count():
                json_result['is_admin'] = True
                json_result['next_route'] = '/main_admin/'
                return HttpResponse(json.dumps(json_result), content_type="application/json")
            else:
                json_result['is_admin'] = False
                json_result['next_route'] = '/'
                return HttpResponse(json.dumps(json_result), content_type="application/json")
        else:
            json_result['valid_password'] = False
            return HttpResponse(json.dumps(json_result), content_type="application/json")
    except:
        json_result['valid_user'] = False
        json_result['valid_password'] = False
        json_result['is_admin'] = False
        json_result['next_route'] = '/login/'
        return HttpResponse(json.dumps(json_result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def validate_login(request, *args, **kwargs):
    result = False
    try:
        user_password = request.POST[u'password']
        if request.user.check_password(user_password) or request.user.password == user_password:
            result = True
    except Exception as ex:
        Logger.log_exception("main_views.ValidateLoginView.post", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")


@require_GET
@method_decorator(csrf_exempt)
def password_change_page(request, *args, **kwargs):
    if request.user.is_authenticated():
        return render_to_response('web/account/password_change.html', locals(), context_instance=RequestContext(request))
    else:
        return HttpResponseRedirect('/')

@require_POST
@method_decorator(csrf_exempt)
def password_change_action(request, *args, **kwargs):
    result = False
    try:
        old_password = request.POST['old_password']
        new_password = request.POST['new_password']
        user = request.user
        if (user.is_authenticated() and (user.check_password(old_password)) or user.password == old_password):
            request.user.password = new_password
            request.user.save()
            result = True
    except Exception as ex:
        Logger.log_exception("main_vews.password_change.post", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def check_password(request, *args, **kwargs):
    result = False
    try:
        user_password = request.POST['password']
        user = request.user
        if request.user.is_authenticated():
            if user.check_password(user_password) or (request.user.password == user_password):
                result = True
    except Exception as ex:
        Logger.log_exception("main_vews.password_change.post", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")


@require_GET
@method_decorator(csrf_exempt)
def logout_action(request, *args, **kwargs):
    if request.user.is_authenticated():
        request.user.backend = 'django.contrib.auth.backends.ModelBackend'
        logout(request)
    return HttpResponseRedirect('/')

@require_GET
@method_decorator(csrf_exempt)
def news_tab(request, *args, **kwargs):
    is_publisher = is_reader = is_administrator = False
    try:
        if  not request.user is None:
            for x in request.user.groups.all():
                if x.name == 'administrator': is_administrator = True
                if x.name == 'reader': is_reader = True
                if x.name == 'publisher': is_publisher = True
    except Exception as ex:
        Logger.log_exception("main_views.news_tab", ex)
    return render_to_response('web/news_tab.html', locals(), context_instance=RequestContext(request))

@require_GET
@method_decorator(csrf_exempt)
def polls_tab(request, *args, **kwargs):
    is_publisher = is_reader = is_administrator = False
    try:
        if  not request.user is None:
            for x in request.user.groups.all():
                if x.name == 'administrator': is_administrator = True
                if x.name == 'reader': is_reader = True
                if x.name == 'publisher': is_publisher = True
    except Exception as ex:
        Logger.log_exception("main_views.polls_tab", ex)
    return render_to_response('web/polls_tab.html', locals(), context_instance=RequestContext(request))


@require_GET
@method_decorator(csrf_exempt)
def registration(request, *args, **kwargs):
    if request.user.is_authenticated():
        return HttpResponseRedirect('/')
    else:
        login_form = LoginForm()
        return render_to_response('web/account/registration.html', locals(), context_instance=RequestContext(request))


@require_GET
@method_decorator(csrf_exempt)
def config_account(request, *args, **kwargs):
    try:
        if not request.user.is_authenticated():
            return HttpResponseRedirect('/')
        else:
            user_profile = web.models.UserProfile.manager.get_by_user_id(request.user.id)
            user_data = JsonUserProfile.to_json(user_profile)
            return render_to_response('web/account/account_config.html', locals(), context_instance=RequestContext(request))
    except Exception as ex:
        Logger.log_exception("main_views.config_account.get", ex)
        return HttpResponseRedirect('/')

@require_GET
@method_decorator(csrf_exempt)
def start_tab(request, *args, **kwargs):
    is_publisher = is_reader = is_administrator = False
    try:
        if  not request.user is None:
            for x in request.user.groups.all():
                if x.name == 'administrator': is_administrator = True
                if x.name == 'reader': is_reader = True
                if x.name == 'publisher': is_publisher = True
    except Exception as ex:
        Logger.log_exception("main_views.start_tab", ex)

    article_list = web.models.Article.manager.get_most_recent_articles()
    article_count = len(article_list)
    return render_to_response('web/start_tab/start_tab.html', locals(), context_instance=RequestContext(request))


@require_GET
@method_decorator(csrf_exempt)
def section_news_tab(request, *args, **kwargs):
    section_id = int(request.GET[u'section_id'])
    return render_to_response('web/shared/section_news_tab.html', locals(), context_instance=RequestContext(request))

	
@require_GET
@method_decorator(csrf_exempt)
def tab_404(request):
    if  not request.user is None:
        is_publisher = is_reader = is_administrator = False
        for x in request.user.groups.all():
            if x.name == 'administrator': is_administrator = True
            if x.name == 'reader': is_reader = True
            if x.name == 'publisher': is_publisher = True
            #context_instance=RequestContext(request)
    return render_to_response('web/utils/tab_404.html', locals(), context_instance=RequestContext(request))


	
@require_GET
@method_decorator(csrf_exempt)
def tab_500(request):
    if  not request.user is None:
        is_publisher = is_reader = is_administrator = False
        for x in request.user.groups.all():
            if x.name == 'administrator': is_administrator = True
            if x.name == 'reader': is_reader = True
            if x.name == 'publisher': is_publisher = True
            #context_instance=RequestContext(request)
    return render_to_response('web/utils/tab_500.html', locals(), context_instance=RequestContext(request))