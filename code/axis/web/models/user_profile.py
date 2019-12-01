from django.db import models
from django.contrib.auth.models import User
from web.models.managers.user_profile_manager import UserProfileManager
from web.models.image import Image

class UserProfile(models.Model):

    user_profile_id = models.IntegerField(primary_key=True, db_column='user_profile_id')
    user = models.OneToOneField(to=User, null=False)
    profile_image = models.OneToOneField(to=Image, db_column='profile_image_id', null=True)

    biography = models.CharField(max_length=300, null=False)
    deleted = models.BooleanField(default=False, null=False)

    manager = UserProfileManager()

    class Meta:
        app_label = 'web'
        db_table = 'user_profile'
        unique_together = ('user_profile_id', 'user')