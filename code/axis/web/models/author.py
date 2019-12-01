from django.db import models
from web.models.managers.author_manager import AuthorManager
from web.models.image import Image
from web.models.user_profile import UserProfile

class Author(models.Model):

    author_id = models.IntegerField(primary_key=True, db_column='author_id')
    user_profile = models.OneToOneField(to=UserProfile, db_column='user_profile_id', null=True)
    added_by = models.ForeignKey(to=UserProfile, db_column='added_by', related_name='added_by_user')
    profile_image = models.ForeignKey(Image, null=True, unique=True)

    first_name = models.CharField(max_length=30, null=True)
    last_name = models.CharField(max_length=30, null=True)
    biography = models.CharField(max_length=1000, null=True)
    description = models.CharField(max_length=300, null=False)
    deleted = models.BooleanField(default=0, null=False)

    manager = AuthorManager()

    class Meta:
        app_label = 'web'
        db_table = 'author'