import web.constants.const as const
import web.constants.model_const as mconst

def template_constants(request):
    return {
        'NAVBAR_PREFILTER_TITLE': const.NAVBAR_PREFILTER_TITLE, # 1
        'NAVBAR_PREFILTER_AUTHOR': const.NAVBAR_PREFILTER_AUTHOR, #2,
        'NAVBAR_PREFILTER_PUBLISHER': const.NAVBAR_PREFILTER_PUBLISHER, #3,
        'URL_REGEX' : '/((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/',
        'COMMENT_LENGTH' : mconst.COMMENT_LENGTH,
        'NAME_LENGTH' : mconst.NAME_LENGTH,
        'PASSWORD_LENGTH' : mconst.PASSWORD_LENGTH,
        'EMAIL_LENGTH' : mconst.EMAIL_LENGTH,
        'ARTICLE_BODY_LENGTH' : mconst.ARTICLE_BODY_LENGTH,
        'ARTICLE_SUMMARY_LENGTH' : mconst.ARTICLE_SUMMARY_LENGTH,
        'BIOGRAPHY_LENGTH': mconst.BIOGRAPHY_LENGTH
        # TODO Buscar un expresion regular para urls, por el momento permite cualquier cosa
    }