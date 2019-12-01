from web.utils.logger import Logger


class JsonAuthor(object):

    @staticmethod
    def to_json(author):
        result = None
        try:
            user_profile_id = None
            try:
                added_by_id = author.added_by.user_profile_id
                added_by_user_id = author.added_by.user.id
                added_by_display = author.added_by.user.first_name + " " + author.added_by.user.last_name
            except:
                added_by_id = 0
                added_by_user_id = 0
                added_by_display = ""

            use_existing_user = True
            try: user_profile_id = author.user_profile.user_profile_id
            except: use_existing_user = False

            profile_image_path = ""
            try: profile_image_path = author.profile_image.path
            except: pass

            if not use_existing_user:
                author_biography  = author.biography
                author_first_name = author.first_name
                author_last_name = author.last_name
                profile_image_path = profile_image_path
            else:
                try:
                    author_biography = author.user_profile.biography
                    author_first_name = author.user_profile.user.first_name
                    author_last_name = author.user_profile.user.last_name
                    profile_image_path = profile_image_path
                except:
                    author_biography  = ''
                    author_first_name = ''
                    author_last_name = ''
                    profile_image_path = ''

            has_articles = False
            try:
                article_set = author.article_set.all()
                if (len(article_set) > 0):
                    has_articles = True
            except:
                pass

            result = {
                'added_by_id': added_by_id,
                'added_by_display': added_by_display,
                'added_by_user_id': added_by_user_id,
                'user_profile_id': user_profile_id,
                'use_existing_user': use_existing_user,
                'author_id': author.author_id,
                'biography': author_biography,
                'description': author.description,
                'deleted': author.deleted,
                'first_name': author_first_name,
                'last_name': author_last_name,
                'profile_image_path': profile_image_path,
                'has_articles': has_articles
            }
        except Exception as ex:
            Logger.log_exception("JsonAuthor.to_json", ex)
        return result

    @staticmethod
    def to_json_list(query):
        result = list()
        try:
            if query is not None:
                for x in query:
                    author = JsonAuthor.to_json(x)
                    if author is not None:
                        result.append(author)
            try:
                result = sorted(result, key=lambda k: (k['last_name'], k['first_name']))
            except Exception as ex:
                Logger.log_exception("JsonAuthor.to_json_list", ex)
        except Exception as ex:
            Logger.log_exception("JsonAuthor.to_json_list", ex)
        return result

    @staticmethod
    def to_json_list_for_cbo(query):
        result = list()
        if query is not None:
            for x in query:
                try:
                    first_name = x.first_name
                    last_name = x.last_name
                    if x.user_profile is not None:
                        first_name = x.user_profile.user.first_name
                        last_name = x.user_profile.user.last_name
                    author = {
                        'author_id': x.author_id,
                        'author_display': first_name + ' ' + last_name
                    }
                    result.append(author)
                except Exception as ex:
                    Logger.log_exception("JsonAuthor.to_json_list_for_cbo", ex)
        return result