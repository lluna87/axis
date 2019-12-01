from django.contrib import admin
from web.models.article import Article
from web.models.author import Author
from web.models.choice import Choice
from web.models.image import Image
from web.models.poll import Poll
from web.models.publication import Publication
from web.models.section import Section
from web.models.article_section import ArticleSection
from web.models.poll_section import PollSection
from web.models.source import Source
from web.models.tag import Tag
from web.models.user_profile import UserProfile
from web.models.vote import Vote
from web.models.article_rate import ArticleRate
from web.models.comment import Comment
from web.models.article_image import ArticleImage
from web.models.user_section import UserSection

admin.site.register(UserProfile)
admin.site.register(Article)
admin.site.register(Author)
admin.site.register(Choice)
admin.site.register(Image)
admin.site.register(Poll)
admin.site.register(Publication)
admin.site.register(Section)
admin.site.register(ArticleSection)
admin.site.register(PollSection)
admin.site.register(Source)
admin.site.register(Tag)
admin.site.register(Vote)
admin.site.register(ArticleRate)
admin.site.register(Comment)
admin.site.register(ArticleImage)
admin.site.register(UserSection)