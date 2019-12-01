import os
import json
import unicodedata

from django.contrib.auth.models import User, Group
from django.core.urlresolvers import reverse
from django.http import HttpResponse, HttpResponseRedirect
from django.views.decorators.csrf import csrf_exempt
from django.views.decorators.http import require_POST, require_GET
from django.utils.decorators import method_decorator
from django.contrib.auth import login

import web.models
import web.constants.const as const
from web.utils.converters.json_user_profile import JsonUserProfile
from web.utils.logger import Logger


@require_GET
@method_decorator(csrf_exempt)
def load(request, *args, **kwargs):
    result = list()
    try:
        query = web.models.UserProfile.manager.filter(deleted=False).order_by('user__last_name', 'user__first_name')
        result = JsonUserProfile.to_json_list(query)
    except Exception as ex:
        Logger.log_exception("user_profile_views.load.get", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def insert(request, *args, **kwargs):
    new_user_profile = web.models.UserProfile.manager.insert(request.user, request.GET)
    result = JsonUserProfile.to_json(new_user_profile)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def update(request, *args, **kwargs):
    user_profile_id = int(request.GET[u'user_profile_id'])
    user_profile = web.models.UserProfile.manager.get(user_profile_id=user_profile_id)
    user_profile.user.first_name = request.GET[u'first_name']
    user_profile.user.first_name = request.GET[u'first_name']
    user_profile.user.last_name = request.GET[u'last_name']
    user_profile.user.email = request.GET[u'email']
    user_profile.user.save()
    user_profile.biography = request.GET[u'biography']

    try:
        if (u'profile_image_path' in request.GET and len(request.GET[u'profile_image_path']) > 0):
            # GET tiene un valor
            post_value = request.GET[u'profile_image_path']

            if post_value == u"clean" and user_profile.profile_image is not None:
                # el usuario tiene una image y GET indica limpiar
                web.models.Image.manager.clean_user_profile_img(user_profile.profile_image.path)
                user_profile.profile_image.path = u""
                user_profile.profile_image.save()
            elif user_profile.profile_image is not None:
                # GET tiene una nueva imagen y el usuario tiene una imagen registrada
                web.models.Image.manager.clean_user_profile_img(user_profile.profile_image.path)
                image_path = web.models.Image.manager.create_user_img(user_profile.user_profile_id, post_value)
                user_profile.profile_image.path = image_path
                user_profile.profile_image.save()
            elif user_profile.profile_image is None:
                # GET tiene una nueva imagen y el usuario NO tiene una imagen registrada
                image_path = web.models.Image.manager.create_user_img(user_profile.user_profile_id, post_value)
                new_image = web.models.Image.manager.insert_profile_img(image_path)
                if (new_image is not None):
                    user_profile.profile_image_id = new_image.image_id
    except Exception as ex:
        Logger.log_exception("user_profile_views.Updateweb.models.UserProfile.post", ex)

    user_profile.save()

    is_publisher = request.GET[u'is_publisher']
    is_reader = request.GET[u'is_reader']
    is_administrator = request.GET[u'is_administrator']

    publishers_group = Group.objects.get(name='publisher')
    if is_publisher == u'true':
        publishers_group.user_set.add(user_profile.user)
    else:
        publishers_group.user_set.remove(user_profile.user)

    readers_group = Group.objects.get(name='reader')
    if is_reader == u'true':
        readers_group.user_set.add(user_profile.user)
    else:
        readers_group.user_set.remove(user_profile.user)

    administrators_group = Group.objects.get(name='administrator')
    if is_administrator == u'true':
        administrators_group.user_set.add(user_profile.user)
    else:
        administrators_group.user_set.remove(user_profile.user)

    result = JsonUserProfile.to_json(user_profile)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def delete(request, *args, **kwargs):
    user_profile_id = int(request.GET[u'user_profile_id'])
    user_profile = web.models.UserProfile.manager.get(pk=user_profile_id)
    user_profile.deleted = True
    user_profile.save()
    query = web.models.UserProfile.manager.filter(deleted=False)
    result = JsonUserProfile.to_json_list(query)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def load_for_combo(request, *args, **kwargs):
    result = list()
    try:
        query = web.models.UserProfile.manager.filter(deleted=False)
        result = JsonUserProfile.to_json_for_cbo_list(query)
    except Exception as ex:
        Logger.log_exception("user_profile_views.load_for_combo.get", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def load_for_author_combo(request, *args, **kwargs):
    result = list()
    try:
        authors_query = web.models.Author.manager.filter(deleted=False)
        query = web.models.UserProfile.manager.exclude(user_profile_id__in=authors_query)
        query = query.filter(deleted=False)
        result = JsonUserProfile.to_json_for_cbo_list(query)
    except Exception as ex:
        Logger.log_exception("user_profile_views.load_for_author_combo.get", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_GET
@method_decorator(csrf_exempt)
def load_for_publishers_combo(request, *args, **kwargs):
    try:
        publishers = Group.objects.get(name='publisher').user_set.all()
        user_profiles = list()
        for user in publishers:
            try:
                user_profile = web.models.UserProfile.manager.get(user_id=user.id)
                if not user_profile.deleted:
                    user_profiles.append(user_profile)
            except Exception as ex:
                pass
        result = JsonUserProfile.to_json_for_cbo_list(user_profiles)
    except Exception as ex:
        result = list()
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def load_profile(request, *args, **kwargs):
    user_profile_id = request.POST[u'user_profile_id']
    query = web.models.UserProfile.manager.get(user_profile_id=user_profile_id)
    result = JsonUserProfile.to_json(query)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def registrate(request, *args, **kwargs):
    errors = False
    try:
        user_data = request.POST
        new_user_profile = web.models.UserProfile.manager.insert_reader(user_data)
        if (new_user_profile is not None):
            try:
                section_ids = user_data[u'user_favorite_sections']
                section_ids = u'[' + section_ids + u']'
                user_sections = json.loads(section_ids)
            except Exception as ex:
                Logger.log_exception("user_profile_views.registrate", ex)
                user_sections = list()
            if len(user_sections)>0:
                web.models.UserProfile.manager.update_sections(new_user_profile, user_sections)

            try:
                if (u'profile_image_path' in user_data and len(user_data[u'profile_image_path']) > 0):
                    profile_image_tmp_path = user_data[u'profile_image_path']
                    image_path = web.models.Image.manager.create_user_img(new_user_profile.user_profile_id, profile_image_tmp_path)
                    new_image = web.models.Image.manager.insert_profile_img(image_path)
                    if (new_image is not None):
                        new_user_profile.profile_image_id = new_image.image_id
                        new_user_profile.save()
            except Exception as ex:
                Logger.log_exception("user_profile_views.registrate", ex)

            new_user_profile.user.backend = 'django.contrib.auth.backends.ModelBackend'
            login(request, new_user_profile.user)
    except Exception as ex:
        errors = True
        Logger.log_exception("user_profile_views.registrate", ex)
    return HttpResponseRedirect(reverse('web.main'))

@require_POST
@method_decorator(csrf_exempt)
def account_config_update(request, *args, **kwargs):
    errors = False
    try:
        auth_user = request.user
        auth_user.first_name = request.POST[u'first_name']
        auth_user.last_name = request.POST[u'last_name']
        auth_user.email = request.POST[u'email']
        auth_user.username = request.POST[u'user_name']
        auth_user.save()
        user_profile = web.models.UserProfile.manager.get_by_user_id(auth_user.id)
        user_profile.biografia = request.POST[u'biography']
        user_profile.save()

        try:
            section_ids = request.POST[u'user_favorite_sections']
            section_ids = u'[' + section_ids + u']'
            user_sections = json.loads(section_ids)
        except:
            user_sections = list()
        if len(user_sections)>0:
            web.models.UserProfile.manager.update_sections(user_profile, user_sections)

        try:
            if (u'profile_image_path' in request.POST and len(request.POST[u'profile_image_path']) > 0):
                # POST tiene un valor
                post_value = request.POST[u'profile_image_path']

                if post_value == u"clean" and user_profile.profile_image is not None:
                    # el usuario tiene una image y post indica limpiar
                    web.models.Image.manager.clean_user_profile_img(user_profile.profile_image.path)
                    user_profile.profile_image.path = u""
                    user_profile.profile_image.save()
                elif user_profile.profile_image is not None:
                    # POST tiene una nueva imagen y el usuario tiene una imagen registrada
                    web.models.Image.manager.clean_user_profile_img(user_profile.profile_image.path)
                    image_path = web.models.Image.manager.create_user_img(user_profile.user_profile_id, post_value)
                    user_profile.profile_image.path = image_path
                    user_profile.profile_image.save()
                elif user_profile.profile_image is None:
                    # POST tiene una nueva imagen y el usuario NO tiene una imagen registrada
                    image_path = web.models.Image.manager.create_user_img(user_profile.user_profile_id, post_value)
                    new_image = web.models.Image.manager.insert_profile_img(image_path)
                    if (new_image is not None):
                        user_profile.profile_image_id = new_image.image_id
                        user_profile.save()
        except Exception as ex:
            Logger.log_exception("user_profile_views. RegistrateUserProfile.post", ex)

    except Exception as ex:
        errors = True
        Logger.log_exception("user_profile_views.account_config_update.post", ex)
    return HttpResponseRedirect(reverse('web.main'))

@require_POST
@method_decorator(csrf_exempt)
def upload_user_tmp_image(request, *args, **kwargs):
    try:
        img_file = request.FILES[u'profile_image']
        # Obtener nombre y extension del archivo subido
        orig_file_name, file_ext = os.path.splitext(unicodedata.normalize('NFKD', img_file.name).encode('ascii','ignore'))
        # Si no existe crear el directorio de imagenes temporal para imagenes de perfil
        if not os.path.exists(const.TEMP_PROFILE_IMG_PATH):
            os.makedirs(const.TEMP_PROFILE_IMG_PATH)
        file_name = ""
        file_count = 0
        if request.user.id is None:
            search_file_name = "new_user_temp_img" + file_ext
            for name in os.listdir(const.TEMP_PROFILE_IMG_PATH):
                if search_file_name in name:
                    file_count += 1
            file_name = str(file_count + 1) + "_" + search_file_name
        else:
            file_name = str(request.user.id) + "_new_user_temp_img" + file_ext
        full_file_name = const.TEMP_PROFILE_IMG_PATH + file_name
        # Se abre el archivo para escritura y se secribe por partes
        with open(full_file_name, 'wb+') as destination:
            for chunk in img_file.chunks(): destination.write(chunk)

        return HttpResponse(json.dumps(file_name), content_type="application/json")
    except:
        return HttpResponse(json.dumps(False), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def clean_user_tmp_image(request, *args, **kwargs):
    session_user = request.user
    if session_user.is_authenticated():
        web.models.Image.manager.clean_user_tmp_profile_img(session_user.id)
    else:
        file_to_clean = request.POST[u'fileToClean']
        web.models.Image.manager.clean_user_tmp_profile_img(file_to_clean)
    return HttpResponse()

@require_POST
@method_decorator(csrf_exempt)
def verify_email_exists(request, *args, **kwargs):
    try:
        user_email = request.POST[u'email']
        auth_user_id = int(request.POST[u'auth_user_id'])
        user_query = User.objects.filter(email=user_email)
        count = 0
        for user in user_query:
            count += 1
        result = True
        if count > 1:
            result = False
        elif count == 1 and not user_query.filter(id=auth_user_id):
            result = False
    except Exception as ex:
        result = True
        Logger.log_exception("user_profile_views.verify_email_exists.post", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")

@require_POST
@method_decorator(csrf_exempt)
def verify_user_name_exists(request, *args, **kwargs):
    try:
        user_name = request.POST[u'user_name']
        auth_user_id = int(request.POST[u'auth_user_id'])
        user_query = User.objects.filter(username=user_name)
        count = len(user_query)
        result = True
        if count > 1:
            result = False
        elif count == 1 and not user_query.filter(id=auth_user_id):
            result = False
        if result and len(user_name) > 30:
            result = False
    except Exception as ex:
        result = True
        Logger.log_exception("user_profile_views.verify_user_name_exists.post", ex)
    return HttpResponse(json.dumps(result), content_type="application/json")