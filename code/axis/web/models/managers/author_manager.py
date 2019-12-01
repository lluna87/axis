import web
import json
from django.db import models
from web.helpers.db_helper import DBHelper
from web.utils.logger import Logger

class AuthorManager(models.Manager):

    def get_average(self, author_id):
        result = 0
        try:
            author = self.get(author_id=author_id)
            count = 0
            total = 0
            for article in author.article_set.all():
                article_average = web.models.ArticleRate.manager.get_average(article.article_id)
                count += 1
                total += article_average
            if count > 0:
                result = total / count
            if result == 0 and total > 0 and count > 0:
                result = 1
        except Exception as ex:
            Logger.log_exception("AuthorManager.get_average", ex)
        return result

    def insert(self, user, author_data):
        new_author = None
        try:
            use_user = False
            if u'existing_user' in author_data:
                use_user = True
            new_author = web.models.Author()
            new_author.author_id = int(DBHelper.next_seq_value('author_id_seq'))
            if use_user:
                existing_user_id = int(author_data[u'existing_user_id'])
                new_author.user_profile_id = existing_user_id
            else:
                new_author.biography = author_data[u'biography']
                new_author.description = author_data[u'description']
                new_author.first_name = author_data[u'first_name']
                new_author.last_name = author_data[u'last_name']
                user_profile = web.models.UserProfile.manager.get_by_user_id(user.id)
                new_author.added_by_id = user_profile.user_profile_id
                new_author.save()
                profile_image = author_data[u'profile_image']
                if not profile_image == u'':
                    image_id = web.models.Image.manager.create_author_img(new_author.author_id, profile_image)
                    if image_id > 0:
                        new_author.profile_image_id = image_id
                        new_author.save()
            try:
                user_profile = web.models.UserProfile.manager.get(user_id=user.id)
                new_author.added_by_id = user_profile.user_profile_id
                new_author.save()
            except Exception as ex:
                Logger.log_exception("AuthorManager.insert.get", ex)
        except Exception as ex:
            Logger.log_exception("AuthorManager.insert.get", ex)
        return new_author

    def update(self, author_data):
        author = None
        try:
            author_id = int(author_data[u'author_id'])
            author = self.get(pk=author_id)
            use_user = u'use_existing_user' in author_data and json.loads(author_data[u'use_existing_user'])
            if use_user:
                author.user_profile_id = int(author_data[u'existing_user_id[user_profile_id]'])
                author.biography = ''
                author.description = ''
                author.first_name = ''
                author.last_name = ''
                try:
                    if author.profile_image is not None:
                        web.models.Image.manager.clean_author_img(author.profile_image.path)
                        author.profile_image.delete()
                except:
                    pass
            else:
                author.user_profile_id = None
                author.biography = author_data[u'biography']
                author.description = author_data[u'description']
                author.first_name = author_data[u'first_name']
                author.last_name = author_data[u'last_name']
            try:
                if (u'profile_img_path' in author_data and len(author_data[u'profile_img_path']) > 0):
                    # GET tiene un valor
                    image_temp_path = author_data[u'profile_img_path']

                    if image_temp_path == u"clean" and author.profile_image is not None:
                        # el usuario tiene una imagen y get indica limpiar
                        web.models.Image.manager.clean_author_img(author.profile_image.path)
                        author.profile_image.path = u""
                        author.profile_image.save()
                    elif author.profile_image is not None:
                        # POST tiene una nueva imagen y el usuario tiene una imagen registrada
                        web.models.Image.manager.clean_author_img(author.profile_image.path)
                        image_path = web.models.Image.manager.create_author_img_file(author.author_id, image_temp_path)
                        author.profile_image.path = image_path
                        author.profile_image.save()
                    elif author.profile_image is None:
                        # POST tiene una nueva imagen y el usuario NO tiene una imagen registrada
                        image_path = web.models.Image.manager.create_author_img(author.author_id, image_temp_path)
                        new_image = web.models.Image.manager.insert_profile_img(image_path)
                        if (new_image is not None):
                            author.profile_image_id = new_image.image_id
            except Exception as ex:
                Logger.log_exception("AuthorManager.update", ex)
            author.save()
        except Exception as ex:
            Logger.log_exception("", ex)
        return author

    def delete(self, author_id):
        result = False
        try:
            author = web.models.Author.manager.get(pk=author_id)
            author.deleted = True
            author.save()
            result = True
        except Exception as ex:
            Logger.log_exception("AuthorManager.load", ex)
        return result

    def load(self):
        try:
            result = web.models.Author.manager.filter(deleted=False).order_by('author_id')
        except Exception as ex:
            result = list()
            Logger.log_exception("AuthorManager.load", ex)
        return  result