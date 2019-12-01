from web.utils.logger import Logger


class JsonUserProfile(object):

    ## USER PROFILE TREATMENT ##
    @staticmethod
    def to_json_list(query):
        result = list()
        if query is not None:
            for user in query:
                user_result = JsonUserProfile.to_json(user)
                result.append(user_result)
        return result

    @staticmethod
    def to_json_for_cbo_list(query):
        result = list()
        if query is not None:
            for x in query:
                user_profile = {
                    'user_profile_id': x.user_profile_id,
                    'user_profile_display': x.user.first_name + ' ' + x.user.last_name
                }
                result.append(user_profile)
        return result

    @staticmethod
    def to_json(user_profile):
        result = user_profile
        try:
            is_publisher = is_reader = is_administrator = False
            for y in user_profile.user.groups.all():
                if y.name == 'administrator': is_administrator = True
                if y.name == 'reader': is_reader = True
                if y.name == 'publisher': is_publisher = True
            profile_image_path = ""
            try: profile_image_path = user_profile.profile_image.path
            except: pass
            user_sections = list()
            try:
                db_user_section = user_profile.usersection_set.all()
                for relation in db_user_section:
                    user_sections.append(relation.section_id)
            except:
                pass
            result = {
                "user_profile_id" : user_profile.user_profile_id,
                "deleted" : user_profile.deleted,
                "auth_user_id" : user_profile.user.id,
                "first_name" : user_profile.user.first_name,
                "last_name" : user_profile.user.last_name,
                "email" : user_profile.user.email,
                "password" : user_profile.user.password,
                "username" : user_profile.user.username,
                "biography" : user_profile.biography,
                'profile_image_path': profile_image_path,
                "is_publisher" : is_publisher,
                "is_reader" : is_reader,
                "is_administrator" : is_administrator,
                "sections" : user_sections
            }
        except Exception as ex:
            Logger.log_exception("JsonUserProfile.to_json", ex)
        return result

