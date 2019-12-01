import json
import os
import time
import shutil
import unicodedata
import web
from django.db import models
from web.constants import const
from web.helpers.db_helper import DBHelper
from web.utils.logger import Logger

class ImageManager(models.Manager):

    def insert_article_img(self, image_path, is_main, article_id):
        try:
            if is_main:
                article_images = web.models.ArticleImage.objects.filter(article_id=article_id, image__is_main=True)
                for art_img in article_images:
                    art_img.image.is_main = False
                    art_img.image.save()

            image = web.models.Image()
            image.image_id = DBHelper.next_seq_value('image_id_seq')
            image.path = image_path
            image.is_main = is_main
            image.save()

            article_image = web.models.ArticleImage()
            article_image.id = DBHelper.next_seq_value('article_image_id_seq')
            article_image.article_id = article_id
            article_image.image_id = image.image_id
            article_image.save()
        except Exception as ex:
            Logger.log_exception("ImageManager.insert_article_img", ex)

    def insert_profile_img(self, image_path):
        try:
            image = web.models.Image()
            image.image_id = DBHelper.next_seq_value('image_id_seq')
            image.path = image_path
            image.save()
        except Exception as ex:
            image = None
            Logger.log_exception("ImageManager.insert_profile_image", ex)
        return image

    def load(self, article_id):
        result_qset = web.models.Image.manager.none()
        try:
            image_rels = web.models.ArticleImage.objects.filter(article_id=article_id)
            rel_id = list()
            for image_rel in image_rels:
                rel_id.append(image_rel.image_id)
            result_qset = web.models.Image.manager.filter(image_id__in=rel_id)
        except Exception as ex:
            Logger.log_exception("ImageManager.load", ex)
        return result_qset

    def set_main(self, article_id, image_id):
        try:
            article_images = web.models.ArticleImage.objects.filter(article_id=article_id)
            article_images_as_main = article_images.exclude(image__image_id=image_id).filter(image__is_main=True)
            for art_image in article_images_as_main:
                art_image.image.is_main = False
                art_image.image.save()

            article_image_main = article_images.get(image__image_id=image_id)
            if article_image_main is not None:
                article_image_main.image.is_main = True
                article_image_main.image.save()
        except Exception as ex:
            Logger.log_exception("ImageManager.set_main", ex)

    def get_time_mark(self):
        result = ''
        try:
            result = "#" + str(int(round(time.time() * 1000)))
        except Exception as ex:
            Logger.log_exception("ImageManager.get_time_mark", ex)
        return result

    def clean_author_img(self, author_img_path):
        try:
            saved_file_name = ""
            found = False
            for name in os.listdir(const.PROFILES_IMG_PATH):
                if author_img_path in name:
                    saved_file_name = name
                    found = True
                    break
            if found:
                os.remove(const.PROFILES_IMG_PATH + '\\' + saved_file_name)
        except Exception as ex:
            Logger.log_exception("ImageManager.clean_author_img", ex)

    def create_author_tmp_img(self, user, img_file):
        result = ""
        try:
            # Obtener nombre y extension del archivo subido
            orig_file_name, file_ext = os.path.splitext(unicodedata.normalize('NFKD', img_file.name).encode('ascii','ignore'))
            # Si no existe crear el directorio de imagenes temporal para imagenes de perfil
            if not os.path.exists(const.TEMP_PROFILE_IMG_PATH):
                os.makedirs(const.TEMP_PROFILE_IMG_PATH)
            file_name = str(user.id) + "_new_author_temp_img" + file_ext
            full_file_name = const.TEMP_PROFILE_IMG_PATH + file_name
            # Se abre el archivo para escritura y se secribe por partes
            with open(full_file_name, 'wb+') as destination:
                for chunk in img_file.chunks(): destination.write(chunk)
            result = file_name
        except Exception as ex:
            Logger.log_exception("ImageManager.create_author_tmp_img", ex)
        return result

    def create_author_img(self, author_id, image_file_name):
        result_id = 0
        try:
            img_file_name = web.models.Image.manager.create_author_img_file(author_id, image_file_name)
            if not img_file_name is None and not img_file_name == "" and not img_file_name == "clean":
                author_image = web.models.Image()
                author_image.image_id = DBHelper.next_seq_value('image_id_seq')
                author_image.ruta_archivo = img_file_name
                author_image.save()
                result_id = author_image.image_id
        except Exception as ex:
            Logger.log_exception("ImageMaanger.create_author_img", ex)
        return result_id

    def create_author_img_file(self, author_id, image_file_name):
        temp_file_name = ""
        found = False
        result = ""
        try:
            if os.path.exists(const.TEMP_PROFILE_IMG_PATH):
                for name in os.listdir(const.TEMP_PROFILE_IMG_PATH):
                    if image_file_name in name:
                        temp_file_name = name
                        found = True
                        break
                if found:
                    name, extension  = os.path.splitext(temp_file_name)
                    final_file_name = "author_img_" + str(author_id) + extension
                    final_file_full_name = const.PROFILES_IMG_PATH + final_file_name
                    temp_file_full_name = const.TEMP_PROFILE_IMG_PATH + "\\" + temp_file_name
                    if not os.path.exists(const.PROFILES_IMG_PATH):
                        os.makedirs(const.PROFILES_IMG_PATH)
                    shutil.copyfile(temp_file_full_name, final_file_full_name)
                    os.remove(temp_file_full_name)
                    result = final_file_name
        except Exception as ex:
            Logger.log_exception("ImageManager.create_author_img", ex)
        return result

    def clean_author_tmp_profile_img(self, user_id):
        try:
            search_file_name = str(user_id) + "_new_author_temp_img"
            temp_file_name = ""
            found = False
            if os.path.exists(const.TEMP_PROFILE_IMG_PATH):
                for name in os.listdir(const.TEMP_PROFILE_IMG_PATH):
                    if search_file_name in name:
                        temp_file_name = name
                        found = True
                        break
                if found:
                    temp_file_full_name = const.TEMP_PROFILE_IMG_PATH + "\\" + temp_file_name
                    os.remove(temp_file_full_name)
        except Exception as ex:
            Logger.log_exception('ImageManager.clean_author_tmp_profile_img', ex)

    def create_user_img(self, user_profile_id, temp_img_path):
        result = ''
        try:
            search_file_name = temp_img_path
            temp_file_name = ""
            found = False
            for name in os.listdir(const.TEMP_PROFILE_IMG_PATH):
                if search_file_name in name:
                    temp_file_name = name
                    found = True
                    break
            if found:
                name, extension  = os.path.splitext(temp_file_name)
                final_file_name = "user_img_" + str(user_profile_id) + extension
                final_file_full_name = const.PROFILES_IMG_PATH + final_file_name
                temp_file_full_name = const.TEMP_PROFILE_IMG_PATH + "\\" + temp_file_name

                if not os.path.exists(const.PROFILES_IMG_PATH):
                    os.makedirs(const.PROFILES_IMG_PATH)

                shutil.copyfile(temp_file_full_name, final_file_full_name)

                os.remove(temp_file_full_name)
                result = final_file_name
        except Exception as ex:
            Logger.log_exception('ImageManager.create_user_img', ex)
        return result

    def clean_user_profile_img(self, image_path):
        try:
            found = False
            if os.path.exists(const.PROFILES_IMG_PATH):
                for name in os.listdir(const.PROFILES_IMG_PATH):
                    if image_path == name:
                        found = True
                        break
                if found:
                    file_full_name = const.PROFILES_IMG_PATH + "\\" + image_path
                    os.remove(file_full_name)
        except Exception as ex:
            Logger.log_exception("ImageManager.clean_user_profile_img", ex)

    def create_new_user_profile_img(self, user_profile_id, temp_file_name):
        result = ''
        try:
            found = False
            for name in os.listdir(const.TEMP_PROFILE_IMG_PATH):
                if temp_file_name in name:
                    temp_file_name = name
                    found = True
                    break
            if found:
                name, extension  = os.path.splitext(temp_file_name)
                final_file_name = "user_img_" + str(user_profile_id) + extension
                final_file_full_name = const.PROFILES_IMG_PATH + final_file_name
                temp_file_full_name = const.TEMP_PROFILE_IMG_PATH + "\\" + temp_file_name

                if not os.path.exists(const.PROFILES_IMG_PATH):
                    os.makedirs(const.PROFILES_IMG_PATH)

                shutil.copyfile(temp_file_full_name, final_file_full_name)

                os.remove(temp_file_full_name)

                result = final_file_name
        except Exception as ex:
            Logger.log_exception("ImageManager.create_new_user_profile_img", ex)
        return result

    def clean_user_tmp_profile_img(self, file_key):
        try:
            if type(file_key) == int:
                # Se recibe id de usuario de sesion
                # (Se esta registrando un usuario desde administracion)
                search_file_name = str(file_key) + "_new_user_temp_img"
            else:
                # Se recibe el nombre del archivo
                if file_key is None:
                    search_file_name = ""
                else:
                    search_file_name = file_key
            temp_file_name = ""
            found = False
            if os.path.exists(const.TEMP_PROFILE_IMG_PATH):
                for name in os.listdir(const.TEMP_PROFILE_IMG_PATH):
                    if search_file_name in name:
                        temp_file_name = name
                        found = True
                        break
                if found:
                    temp_file_full_name = const.TEMP_PROFILE_IMG_PATH + "\\" + temp_file_name
                    os.remove(temp_file_full_name)
        except Exception as ex:
            Logger.log_exception("ImageManager.clean_user_tmp_profile_img", ex)

    def create_article_tmp_img(self, user, img_file):
        result = False
        try:
            # Obtener nombre y extension del archivo subido
            orig_file_name, file_ext = os.path.splitext(unicodedata.normalize('NFKD', img_file.name).encode('ascii','ignore'))
            # Si no existe crear el directorio de imagenes temporal para imagenes de articulo
            destination = const.TEMP_ARTICLE_IMG_PATH + "user_" + str(user.id) + "\\"
            if not os.path.exists(destination):
                os.makedirs(destination)
            file_name = ""
            file_count = 0
            if user.id is None:
                search_file_name = "article_temp_img" + file_ext
                for name in os.listdir(destination):
                    if search_file_name in name:
                        file_count += 1
                file_name = str(file_count + 1) + "_" + search_file_name
            else:
                search_file_name = "pubid_" + str(user.id) + "_article_temp_img" + file_ext
                for name in os.listdir(destination):
                    if search_file_name in name:
                        file_count += 1
                file_name = str(file_count + 1) + "_" + search_file_name
            full_file_name = destination + file_name
            # Se abre el archivo para escritura y se secribe por partes
            with open(full_file_name, 'wb+') as destination_file:
                for chunk in img_file.chunks(): destination_file.write(chunk)
            result = True
        except Exception as ex:
            Logger.log_exception("ImageManager.create_article_tmp_img", ex)
        return result

    def clean_article_tmp_img(self, search_file_name, pub_user_id):
        try:
            found = False
            temp_file_name = ""
            user_tmp_dir = const.TEMP_ARTICLE_IMG_PATH + "user_" + str(pub_user_id) + "\\"
            if os.path.exists(user_tmp_dir):
                for name in os.listdir(user_tmp_dir):
                    if search_file_name in name:
                        temp_file_name = name
                        found = True
                        break
                if found:
                    temp_file_full_name = user_tmp_dir + "\\" + temp_file_name
                    os.remove(temp_file_full_name)
        except Exception as ex:
            Logger.log_exception("ImageManager.clean_article_tmp_img", ex)

    def create_article_img(self, user_id, article_id, destination_dir, temp_file_name):
        result = ''
        try:
            name, extension = os.path.splitext(temp_file_name)
            files_count = 0
            for _ in os.listdir(destination_dir):
                files_count += 1
            final_file_name = "article_" + str(article_id) + "_img_" + str(files_count + 1) + extension
            final_file_full_name = destination_dir + final_file_name
            temp_file_full_name = const.TEMP_ARTICLE_IMG_PATH + "user_" + str(user_id) + "\\" + temp_file_name
            shutil.copyfile(temp_file_full_name, final_file_full_name)
            os.remove(temp_file_full_name)
            result = final_file_name
        except Exception as ex:
            Logger.log_exception("ImageManager.clean_article_tmp_img", ex)
        return result

    def create_article_imgs(self, pub_user_id, article, temp_paths):
        try:
            articles_img_path = const.ARTICLES_IMG_PATH + "article_" + str(article.article_id) + "\\"
            if not os.path.exists(articles_img_path):
                os.makedirs(articles_img_path)
            for img_path in temp_paths:
                if "#" in img_path:
                    img_path = img_path.split('#')[0]
                splitted_text = img_path.split("/")
                img_path = splitted_text[len(splitted_text) - 1]
                img_file_name = self.create_article_img(pub_user_id, article.article_id, articles_img_path, img_path)
                is_main = "main" in img_path
                web.models.Image.manager.insert_article_img(img_file_name, is_main, article.article_id)
        except Exception as ex:
            Logger.log_exception("ImageManager.create_article_imgs", ex)

    def update_article_images(self, user_id, article, image_paths, deletable_img_ids):
        try:
            temp_full_paths = [x[u'path'] for x in image_paths if x[u'temp'] == True]
            temp_paths = list()
            for img_id in deletable_img_ids:
                try:
                    web.models.ArticleImage.objects.filter(image_id=img_id).delete()
                    self.filter(image_id=int(img_id)).delete()
                except:
                    pass
            for path in temp_full_paths:
                splitted = path.split('/')
                splitted_text = splitted[len(splitted) - 1]
                temp_paths.append(splitted_text.split('#')[0])
            not_temp_paths = list()
            not_temp_full_paths = [x[u'path'] for x in image_paths if x[u'temp'] == False]
            for path in not_temp_full_paths:
                splitted = path.split('/')
                splitted_text = splitted[len(splitted) - 1]
                not_temp_paths.append(splitted_text.split('#')[0])
            web.models.Image.manager.create_article_imgs(user_id, article, temp_paths)
        except Exception as ex:
            Logger.log_exception('ArticleManager.update_article_images', ex)

    def get_article_json_list(self, article_id, article_images):
        result = list()
        try:
            article_main_path = const.ARTICLES_IMG_PATH_TPL + "article_" + str(article_id) + "/"
            for img in article_images:
                try:
                    img_result = {
                        'path': article_main_path + img.path,
                        'is_main': img.is_main
                    }
                    result.append(img_result)
                except Exception as ex:
                    Logger.log_exception("ImageManager.get_article_json_list", ex)
        except Exception as ex:
            Logger.log_exception("ImageManager.get_article_json_list", ex)
        return result

    def get_image_path_for_template(self, profile_image):
        try:
            result_path = const.PROFILES_IMG_PATH + profile_image.path + self.get_time_mark()
        except Exception as ex:
            result_path = ''
            Logger.log_exception("ImageManager.get_image_path_for_template", ex)
        return result_path

    def get_main_img_path(self, article_id, article_images):
        # TODO Usar una imagen de seccion o algo similar
        main_img_path = ""
        try:
            for img in article_images:
                if img.is_main:
                    main_img_path = main_img_path + img.path
                    break
            if main_img_path == "" and article_images is not None and len(article_images) > 0:
                article_images = article_images[:1]
                main_img_path = main_img_path + article_images[0].path
            if not main_img_path == "":
                main_img_path = const.ARTICLES_IMG_PATH_TPL + "article_" + str(article_id) + "/" + main_img_path
                main_img_path += self.get_time_mark()
        except Exception as ex:
            Logger.log_exception("ImageManager.get_main_img_path", ex)
        return main_img_path

    def update_article_tmp_main(self, user, file_data):
        try:
            req_file_name = file_data[u'fileName']
            req_file_name = req_file_name.split("#")[0]
            # Si req_file_name ya es main no hago nada
            # Si no es main:
            if not "main" in req_file_name:
                user_tmp_dir = const.TEMP_ARTICLE_IMG_PATH + "user_" + str(user.id) + "\\"
                for file_full_name in os.listdir(user_tmp_dir):
                    file_name, file_ext = os.path.splitext(file_full_name)
                    if file_full_name == req_file_name:
                        new_file_name = file_name + "_main" + file_ext
                        os.rename(user_tmp_dir + file_full_name, user_tmp_dir + new_file_name)
                    elif "_main" in file_full_name:
                        new_file_name = file_full_name.replace("_main", "")
                        os.rename(user_tmp_dir + file_full_name, user_tmp_dir + new_file_name)
                try:
                    if u'imageId' in file_data and file_data[u'imageId'] != u'null':
                        image_id = int(file_data[u'imageId'])
                        article_id = int(file_data[u'articleId'])
                        self.set_main(article_id=article_id, image_id=image_id)
                except Exception as ex:
                    Logger.log_exception("ImageManager.update_article_tmp_main", ex)
        except Exception as ex:
            Logger.log_exception("ImageManager.update_article_main_tmp", ex)

    def load_article_temp_img_paths(self, parent_dir, path_for_temp):
        result = list()
        walk_result = os.walk(parent_dir, topdown=False)
        for root, dirs, files in walk_result:
            for name in files:
                file_name, file_ext = os.path.splitext(name)
                if file_ext in const.ALLOWED_IMG_EXT:
                    file_path = path_for_temp + name + "#" + str(int(round(time.time() * 1000)))
                    is_main = "main" in file_path
                    result.append({
                        'image_path': file_path,
                        'temp': True,
                        'article_id': 0,
                        'is_main': is_main
                    })
        return result

    def load_article_img_paths(self, article_id, art_deletable_img_ids):
        result = list()
        try:
            article = web.models.Article.manager.get(article_id=article_id)
            images = self.load(article.article_id)
            if len(art_deletable_img_ids) > 0:
                images = images.exclude(image_id__in=art_deletable_img_ids)
            path_for_files = const.ARTICLES_IMG_PATH_TPL + 'article_' + str(article_id) + '/'
            for img in images:
                file_name, file_ext = os.path.splitext(img.path)
                if file_ext in const.ALLOWED_IMG_EXT:
                    file_path = path_for_files + img.path + "#" + str(int(round(time.time() * 1000)))
                    result.append({
                        'image_path': file_path,
                        'temp': False,
                        'image_id': img.image_id,
                        'is_main': img.is_main
                    })
        except Exception as ex:
            Logger.log_exception("ArticleManager.load_article_img_paths", ex)
        return result

