from django.conf import settings

NEWS_TAB_ARTICLE_COUNT = 27
SUGGESTED_ARTICLE_COUNT = 5

EMPTY_IMG_PATH = settings.STATIC_URL + "img/article_no_image.jpg"
TEMP_PATH = 'axis/temp/'
LOGS_PATH = 'axis/logs/'
TEMP_PATH_ART_IMG_FOR_TPL = settings.MEDIA_URL + "temp/article_images/"
TEMP_ARTICLE_IMG_PATH = settings.MEDIA_ROOT + "\\temp\\article_images\\"
ARTICLES_IMG_PATH = settings.MEDIA_ROOT + "\\article_images\\"
ARTICLES_IMG_PATH_TPL = settings.MEDIA_URL + "article_images/"

TEMP_PROFILE_IMG_PATH = settings.MEDIA_ROOT + "\\temp\\profile_images\\"
TEMP_PROFILE_IMG_URL = "\\media\\temp\\profile_images\\"
PROFILES_IMG_PATH = settings.MEDIA_ROOT + "\\profile_images\\"
PROFILES_IMG_PATH_URL = settings.MEDIA_URL + "profile_images/"

SILHOUETTE_USER = settings.STATIC_URL + "img/silhouette_user.png"
SILHOUETTE_AUTHOR = settings.STATIC_URL + "img/silhouette_author.png"

NAVBAR_PREFILTER_TITLE = 1
NAVBAR_PREFILTER_AUTHOR = 2
NAVBAR_PREFILTER_PUBLISHER = 3

LONG_DATE_FORMAT = "%A %d de %B de %Y"
SHORT_DATE_FORMAT = "%Y-%m-%d %H:%M:%S"

ALLOWED_IMG_EXT = ['.png', '.jpeg', '.jpg', '.gif', '.bmp']