from django.db import models
from web.models.managers.image_manager import ImageManager

class Image(models.Model):

    image_id = models.IntegerField(primary_key=True, db_column='image_id')

    path = models.FilePathField(db_column='path', null=False)
    is_main = models.BooleanField(default=False, null=False, max_length=1)
    deleted = models.BooleanField(default=False, null=False)

    manager = ImageManager()

    class Meta:
        app_label = 'web'
        db_table = 'image'