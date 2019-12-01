from django.contrib.auth.models import User, Group
import web
import web.helpers.db_helper as dbh
from django.db import models
from web.utils.logger import Logger
from web.helpers.db_helper import DBHelper

class UserProfileManager(models.Manager):

    def get_by_user_id(self, user_id):
        result = None
        try:
            result = self.get(user_id=user_id)
        except Exception as ex:
            Logger.log_exception("UserProfileManager.get_by_user_id", ex)
        return result

    def update_sections(self, user_profile, section_ids):
        try:
            user_section_set = user_profile.usersection_set.all()
            deletable_article_section_set = user_section_set.exclude(section_id__in=section_ids)
            for user_section in deletable_article_section_set:
                user_section.delete()
            for section_id in section_ids:
                try:
                    filtered_count = len(user_section_set.filter(section_id=section_id))
                    if filtered_count <= 0:
                        new_rel = web.models.UserSection()
                        new_rel.user_section_id = dbh.DBHelper.next_seq_value('user_section_id_seq')
                        new_rel.user_profile_id = user_profile.user_profile_id
                        new_rel.section_id = section_id
                        new_rel.save()
                except Exception as ex:
                    Logger.log_exception('UserProfileManager.update_sections', ex)
        except Exception as ex:
            Logger.log_exception('UserProfileManager.update_sections', ex)

    def get_publisher_average(self, user_profile_id):
        result = 0
        try:
            user_profile = self.get(user_profile_id=user_profile_id)
            count = 0
            total = 0
            for publication in user_profile.publication_set.all():
                article_average = web.models.ArticleRate.manager.get_average(publication.article_id)
                count += 1
                total += article_average
            if count > 0:
                result = total / count
            if result == 0 and total > 0 and count > 0:
                result = 1
        except Exception as ex:
            Logger.log_exception("UserProfileManager.get_average", ex)
        return result

    def insert(self, adder_user, user_data):
        new_user_profile = None
        try:
            new_auth_user = User()
            new_auth_user.first_name = user_data[u'first_name']
            new_auth_user.last_name = user_data[u'last_name']
            new_auth_user.email = user_data[u'email']
            new_auth_user.password = user_data[u'password']
            user_name = u'usr'
            username_count = User.objects.filter(username__icontains=user_name).count()
            new_auth_user.username = user_name + u'_' + str(username_count + 1)
            new_auth_user.save()

            is_publisher = user_data[u'is_publisher']
            is_reader = user_data[u'is_reader']
            is_administrator = user_data[u'is_administrator']

            if is_publisher == u'true':
                publishers_group = Group.objects.get(name='publisher')
                publishers_group.user_set.add(new_auth_user)
            if is_reader == u'true':
                publishers_group = Group.objects.get(name='reader')
                publishers_group.user_set.add(new_auth_user)
            if is_administrator == u'true':
                publishers_group = Group.objects.get(name='administrator')
                publishers_group.user_set.add(new_auth_user)

            try:
                new_user_profile = web.models.UserProfile()
                new_user_profile.user_profile_id = DBHelper.next_seq_value('user_profile_id_seq')
                new_user_profile.user_id = new_auth_user.id
                new_user_profile.biografia = user_data[u'biography']
                new_user_profile.save()
            except Exception as ex:
                new_auth_user.delete()
                new_user_profile = None
                Logger.log_exception("UserProfileManager.insert", ex)

            try:
                if new_user_profile is not None and u'profile_image_path' in user_data and user_data[u'profile_image_path'] != "":
                    img_file_name = web.models.Image.manager.create_user_img(adder_user.id, user_data[u'profile_image_path'])
                    user_profile_image = web.models.Image()
                    user_profile_image.image_id = dbh.DBHelper.next_seq_value('image_id_seq')
                    user_profile_image.path = img_file_name
                    user_profile_image.save()

                    new_user_profile.profile_image_id = user_profile_image.image_id
                    new_user_profile.save()
            except Exception as ex:
                Logger.log_exception("UserProfileManager.insert", ex)
        except Exception as ex:
            Logger.log_exception("UserProfileManager.insert", ex)
        return new_user_profile

    def insert_reader(self, user_data):
        result = None
        try:
            new_auth_user = User()
            new_auth_user.first_name = user_data[u'first_name']
            new_auth_user.last_name = user_data[u'last_name']
            new_auth_user.email = user_data[u'email']
            new_auth_user.password = user_data[u'password']
            new_auth_user.username = user_data[u'user_name']
            new_auth_user.save()
            publishers_group = Group.objects.get(name='reader')
            publishers_group.user_set.add(new_auth_user)
            new_user_profile = web.models.UserProfile()
            new_user_profile.user_profile_id = dbh.DBHelper.next_seq_value('user_profile_id_seq')
            new_user_profile.user_id = new_auth_user.id
            new_user_profile.biography = user_data[u'biography']
            new_user_profile.save()
            result = new_user_profile
        except Exception as ex:
            Logger.log_exception("", ex)
        return result