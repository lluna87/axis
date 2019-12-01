from django.conf.urls import patterns, url
from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
       ## ARTICLES
       url(r'^articles/select/$', 'web.views.article_views.load_articles', name='web.articles.load'),
       url(r'^articles/insert/$', 'web.views.article_views.insert', name='web.articles.insert'),
       url(r'^articles/delete/$', 'web.views.article_views.delete', name='web.articles.delete'),
       url(r'^articles/edit/$', 'web.views.article_views.edit', name='web.articles.edit'),
       url(r'^articles/update/$', 'web.views.article_views.update', name='web.articles.update'),
       url(r'^articles/start_recent_select/$', 'web.views.article_views.load_start_tab_articles', name='web.articles.load_start_tab_articles'),
       url(r'^articles/load_suggested_articles/$', 'web.views.article_views.load_suggested_articles', name='web.articles.load_suggested_articles'),
       url(r'^articles/start_recent_preview/$', 'web.views.article_views.load_preview_article_list', name='web.articles.load_for_preview'),
       url(r'^articles/read$', 'web.views.article_views.read_article', name='web.articles.read'),
       url(r'^articles/content_display/$', 'web.views.article_views.load_content', name='web.articles.display_content'),
       url(r'^articles/search/$', 'web.views.article_views.search', name='web.articles.search'),
       url(r'^articles/search/get_results/$', 'web.views.article_views.search_result', name='web.articles.search_result'),
       url(r'^articles/search/content$', 'web.views.article_views.search_content', name='web.articles.search_content'),
       url(r'^articles/value/$', 'web.views.article_views.value', name='web.articles.value'),
       ## AUTHORS
       url(r'^authors/select/$', 'web.views.author_views.load', name='web.authors.load_authors'),
       url(r'^authors/insert/$', 'web.views.author_views.insert', name='web.authors.insert_author'),
       url(r'^authors/update/$', 'web.views.author_views.update', name='web.authors.update_author'),
       url(r'^authors/delete/$', 'web.views.author_views.delete', name='web.authors.delete_author'),
       url(r'^authors/load/$', 'web.views.author_views.load_author', name='web.authors.load'),
       url(r'^authors/upload_author_image/$', 'web.views.author_views.upload_author_tmp_img', name='web.authors.upload_profile_image'),
       url(r'^authors/clean_tmp_profile_img/$', 'web.views.author_views.clean_author_tmp_img', name='web.authores.clean_tmp_profile_img'),
       url(r'^authors/select_combo/$', 'web.views.author_views.load_for_combo', name='web.authors.load_combo'),
       url(r'^authors/external_insert/$', 'web.views.author_views.external_insert', name='web.authors.external_insert'),
       ## IMAGES
       url(r'^articles/image_listview/$', 'web.views.image_views.article_image_list', name='web.articles.image_listview'),
       url(r'^articles/upload_temp_img/$', 'web.views.image_views.upload_tmp_images', name='web.articles.upload_temp_images'),
       url(r'^articles/tmp_img_as_main/$', 'web.views.image_views.mark_tmp_image_as_main', name='web.articles.tmp_img_as_main'),
       url(r'^articles/delete_tmp_img/$', 'web.views.image_views.delete_tmp_image', name='web.articles.delete_tmp_img'),
       ## COMMENTS
       url(r'^articles/add_comment/$', 'web.views.comment_views.add', name='web.articles.add_comment'),
       url(r'^articles/load_comments/$', 'web.views.comment_views.load', name='web.articles.load_comments'),
       url(r'^articles/delete_comment/$', 'web.views.comment_views.delete', name='web.articles.delete_comment'),
       url(r'^articles/moderate_comment/$', 'web.views.comment_views.moderate', name='web.articles.moderate_comment'),
       ## POLLS
       url(r'^polls/select/$', 'web.views.poll_views.load', name='web.polls.load'),
       url(r'^polls/load_random/$', 'web.views.poll_views.load_random', name='web.polls.load_random'),
       url(r'^polls/insert/$', 'web.views.poll_views.insert', name='web.polls.insert'),
       url(r'^polls/update/$', 'web.views.poll_views.update', name='web.polls.update'),
       url(r'^polls/register_votes/$', 'web.views.poll_views.register_votes', name='web.polls.register_votes'),
       ## CHOICES
       url(r'^choices/select/$', 'web.views.choice_views.load', name='web.choice.load'),
       url(r'^choices/insert/$', 'web.views.choice_views.insert', name='web.choice.insert'),
       url(r'^choices/update/$', 'web.views.choice_views.update', name='web.choice.update'),
       url(r'^choices/delete/$', 'web.views.choice_views.delete', name='web.choice.delete'),
       url(r'^choices/clear_temp/$', 'web.views.choice_views.clear_temp', name='web.choice.clear_temp'),
       ## SECTIONS
       url(r'^sections/select/$', 'web.views.section_views.load', name='web.sections.load_sections'),
       url(r'^sections/insert/$', 'web.views.section_views.insert', name='web.sections.insert_section'),
       url(r'^sections/update/$', 'web.views.section_views.update', name='web.sections.update_section'),
       url(r'^sections/delete/$', 'web.views.section_views.delete', name='web.sections.delete_section'),
       url(r'^sections/select_combo/$', 'web.views.section_views.load_for_combo', name='web.sections.select_combo'),
       url(r'^sections/name_exists/$', 'web.views.section_views.name_exists', name='web.sections.name_exists'),
       ## USER PROFILES
       url(r'^user_profiles/select/$', 'web.views.user_profile_views.load', name='web.users.load_users'),
       url(r'^user_profiles/insert/$', 'web.views.user_profile_views.insert', name='web.users.insert_user'),
       url(r'^user_profiles/update/$', 'web.views.user_profile_views.update', name='web.users.update_user'),
       url(r'^user_profiles/delete/$', 'web.views.user_profile_views.delete', name='web.users.delete_user'),
       url(r'^user_profiles/select_combo/$', 'web.views.user_profile_views.load_for_combo', name='web.users.load_users_combo'),
       url(r'^user_profiles/select_combo_for_author/$', 'web.views.user_profile_views.load_for_author_combo', name='web.users.load_users_combo_for_author'),
       url(r'^user_profiles/select_publishers_combo/$', 'web.views.user_profile_views.load_for_publishers_combo', name='web.users.load_publishers_combo'),
       url(r'^user_profiles/load_user/$', 'web.views.user_profile_views.load_profile', name='web.users.load_user'),
       url(r'^user_profiles/registrate_reader/$', 'web.views.user_profile_views.registrate', name='web.users.registrate_user_profile'),
       url(r'^user_profiles/account_config_update/$', 'web.views.user_profile_views.account_config_update', name='web.users.account_config_update'),
       url(r'^user_profiles/upload_profile_img/$', 'web.views.user_profile_views.upload_user_tmp_image', name='web.users.upload_profile_image'),
       url(r'^user_profiles/clean_tmp_profile_img/$', 'web.views.user_profile_views.clean_user_tmp_image', name='web.users.clean_tmp_profile_img'),
       url(r'^user_profiles/verify_email_exists/$', 'web.views.user_profile_views.verify_email_exists', name='web.users.verify_email_exists'),
       url(r'^user_profiles/verify_user_name_exists/$', 'web.views.user_profile_views.verify_user_name_exists', name='web.users.verify_user_name_exists'),
       ## TAGS
       url(r'^tags/select_combo/$', 'web.views.tag_views.load_for_combo', name='web.tags.select_combo'),
       url(r'^tags/moderate_tag/$', 'web.views.tag_views.moderate', name='web.tags.moderate'),
       )
