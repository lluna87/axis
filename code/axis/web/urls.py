from django.conf.urls import patterns, url, include
from django.contrib import admin
from django.views.generic import TemplateView

admin.autodiscover()

urlpatterns = patterns('web.views',
       url(r'^$', 'main_views.main_page', name='web.main'),
       url(r'^main_admin/$', 'main_views.main_page_admin', name='web.main_admin'),
	   url(r'^404_tab/$', 'main_views.tab_404', name='web.404_tab'),
	   url(r'^500_tab/$', 'main_views.tab_500', name='web.500_tab'),
       url(r'^register/$', 'main_views.registration', name='web.register'),
       url(r'^account_config/$', 'main_views.config_account', name='web.account_config'),
       url(r'^login/$', 'main_views.login_page', name='web.login'),
       url(r'^login_action/$', 'main_views.login_action', name='web.login_action'),
       url(r'^validate_login/$', 'main_views.validate_login', name='web.validate_login'),
       url(r'^password_change/$', 'main_views.password_change_page', name='web.password_change_page'),
       url(r'^password_change_action/$', 'main_views.password_change_action', name='web.password_change_action'),
       url(r'^check_password/$', 'main_views.check_password', name='web.check_password'),
       url(r'^logout/$', 'main_views.logout_action', name='web.logout'),
       url(r'^get_session/$', 'main_views.login_page', name='web.get_session'),
       url(r'^content/news_tab/$', 'main_views.news_tab', name='web.news_tab'),
       url(r'^content/polls_tab/$', 'main_views.polls_tab', name='web.polls_tab'),
       url(r'^content/start_tab/$', 'main_views.start_tab', name='web.reading.start_tab'),
       url(r'^content/section_news_tab/$', 'main_views.section_news_tab', name='web.reading.section_news_tab'),
       url(r'^content/publish_tab/$', 'publish_views.publish_tab', name='web.publish_tab'),
       url(r'^publish/articles/create/$', 'article_views.create_article', name='web.articles.create_article'),
       url(r'^publish/articles/edit/$', 'article_views.edit_article', name='web.articles.edit_article'),
       url(r'^publish/articles/return/$', 'publish_views.return_to_article_grid', name='web.publish.return_to_article_grid'),
       url(r'^content/admin_tab/$', TemplateView.as_view(template_name='web/admin/admin_tab.html'), name='web.admin_tab'),
       url(r'^models/', include('web.urls_models')),
)
