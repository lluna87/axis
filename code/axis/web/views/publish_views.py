
# -*- coding: utf-8 -*-

from django.views.decorators.http import require_GET
from django.template import RequestContext
from django.shortcuts import render_to_response, redirect
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt


@require_GET
@method_decorator(csrf_exempt)
def publish_tab(request, *args, **kwargs):
    for x in request.user.groups.all():
        if x.name == 'administrator': is_administrator = True
        if x.name == 'reader': is_reader = True
        if x.name == 'publisher': is_publisher = True
    return render_to_response('web/publish/publish_tab.html', locals(), context_instance=RequestContext(request))


@require_GET
@method_decorator(csrf_exempt)
def return_to_article_grid(request, *args, **kwargs):
    return_to_articles = True
    return redirect('/', return_to_articles)