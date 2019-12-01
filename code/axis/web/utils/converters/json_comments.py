import HTMLParser
import web.constants.const as const

class JsonComment(object):

    @classmethod
    def to_json(cls, comment):
        try:
            article_id = comment.article.article_id
        except:
            article_id = 0
        try:
            user_profile = comment.user_profile
            user_id = user_profile.user.id
            user_profile_id = user_profile.user_profile_id
            user_profile_display = user_profile.user.first_name + ' ' + user_profile.user.last_name
        except:
            user_id = 0
            user_profile_id = 0
            user_profile_display = ''
        try:
            user_profile = comment.user_profile
            if user_profile.profile_image.path != u'':
                user_profile_img_path = const.PROFILES_IMG_PATH_URL + user_profile.profile_image.path
            else:
                user_profile_img_path = const.SILHOUETTE_USER
        except:
            user_profile_img_path = const.SILHOUETTE_USER
        try:
            html_parser = HTMLParser.HTMLParser()
            content = "<br />".join(comment.content.split("\n"))
            comment_display = html_parser.unescape(content)
        except:
            comment_display = comment.content
        result = {
            'comment_id':comment.comment_id,
            'article_id': article_id,
            'user_id':user_id,
            'user_profile_id':user_profile_id,
            'user_profile_display':user_profile_display,
            'user_profile_img_path':user_profile_img_path,
            'content':comment_display,
            'moderated':comment.moderated
        }
        return result

    @classmethod
    def to_json_list(cls, comment):
        result = list()
        if comment is not None:
            for item in comment:
                comment = cls.to_json(item)
                result.append(comment)
        return result