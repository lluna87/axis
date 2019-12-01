# -*- coding: utf-8 -*-
from south.utils import datetime_utils as datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Deleting field 'Publication.deleted'
        db.delete_column('publication', 'deleted')


    def backwards(self, orm):
        # Adding field 'Publication.deleted'
        db.add_column('publication', 'deleted',
                      self.gf('django.db.models.fields.BooleanField')(default=False),
                      keep_default=False)


    models = {
        u'auth.group': {
            'Meta': {'object_name': 'Group'},
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '80'}),
            'permissions': ('django.db.models.fields.related.ManyToManyField', [], {'to': u"orm['auth.Permission']", 'symmetrical': 'False', 'blank': 'True'})
        },
        u'auth.permission': {
            'Meta': {'ordering': "(u'content_type__app_label', u'content_type__model', u'codename')", 'unique_together': "((u'content_type', u'codename'),)", 'object_name': 'Permission'},
            'codename': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'content_type': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['contenttypes.ContentType']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '50'})
        },
        u'auth.user': {
            'Meta': {'object_name': 'User'},
            'date_joined': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '75', 'blank': 'True'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'groups': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'related_name': "u'user_set'", 'blank': 'True', 'to': u"orm['auth.Group']"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'is_active': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'is_staff': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'is_superuser': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'last_login': ('django.db.models.fields.DateTimeField', [], {'default': 'datetime.datetime.now'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'blank': 'True'}),
            'password': ('django.db.models.fields.CharField', [], {'max_length': '128'}),
            'user_permissions': ('django.db.models.fields.related.ManyToManyField', [], {'symmetrical': 'False', 'related_name': "u'user_set'", 'blank': 'True', 'to': u"orm['auth.Permission']"}),
            'username': ('django.db.models.fields.CharField', [], {'unique': 'True', 'max_length': '30'})
        },
        u'contenttypes.contenttype': {
            'Meta': {'ordering': "('name',)", 'unique_together': "(('app_label', 'model'),)", 'object_name': 'ContentType', 'db_table': "'django_content_type'"},
            'app_label': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'model': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '100'})
        },
        'web.article': {
            'Meta': {'object_name': 'Article', 'db_table': "'article'"},
            'article_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True'}),
            'author': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Author']", 'null': 'True'}),
            'body_text': ('django.db.models.fields.CharField', [], {'max_length': '15000'}),
            'content_summary': ('django.db.models.fields.CharField', [], {'max_length': '1000'}),
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '80'}),
            'visits': ('django.db.models.fields.BigIntegerField', [], {'default': '0'})
        },
        'web.articleimage': {
            'Meta': {'unique_together': "(('article', 'image'),)", 'object_name': 'ArticleImage', 'db_table': "'article_image'"},
            'article': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['web.Article']", 'unique': 'True', 'null': 'True', 'db_column': "'article_id'"}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'image': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Image']", 'unique': 'True', 'null': 'True', 'db_column': "'image_id'"})
        },
        'web.articlerate': {
            'Meta': {'unique_together': "(('article', 'user_profile'),)", 'object_name': 'ArticleRate', 'db_table': "'article_rate'"},
            'article': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Article']", 'db_column': "'article_id'"}),
            'article_rate_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True'}),
            'date': ('django.db.models.fields.DateTimeField', [], {}),
            'rating': ('django.db.models.fields.PositiveSmallIntegerField', [], {'default': '0'}),
            'user_profile': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.UserProfile']", 'db_column': "'user_profile_id'"})
        },
        'web.articlesection': {
            'Meta': {'unique_together': "(('article', 'section'),)", 'object_name': 'ArticleSection', 'db_table': "'article_section'"},
            'article': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Article']", 'db_column': "'article_id'"}),
            'article_section_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'article_section_id'"}),
            'section': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Section']", 'db_column': "'section_id'"})
        },
        'web.author': {
            'Meta': {'object_name': 'Author', 'db_table': "'author'"},
            'added_by': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'added_by_user'", 'db_column': "'added_by'", 'to': "orm['web.UserProfile']"}),
            'author_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'author_id'"}),
            'biography': ('django.db.models.fields.CharField', [], {'max_length': '1000', 'null': 'True'}),
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'null': 'True'}),
            'image': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Image']", 'unique': 'True', 'null': 'True'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '30', 'null': 'True'}),
            'user_profile': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['web.UserProfile']", 'unique': 'True', 'null': 'True', 'db_column': "'user_profile_id'"})
        },
        'web.choice': {
            'Meta': {'unique_together': "(('poll', 'choice_id'),)", 'object_name': 'Choice', 'db_table': "'choice'"},
            'choice_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'choice_id'"}),
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'poll': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Poll']", 'db_column': "'poll_id'"}),
            'text': ('django.db.models.fields.CharField', [], {'max_length': '200'})
        },
        'web.comment': {
            'Meta': {'unique_together': "(('article', 'comment_id'),)", 'object_name': 'Comment', 'db_table': "'comment'"},
            'article': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Article']", 'db_column': "'article_id'"}),
            'comment_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'comment_id'"}),
            'content': ('django.db.models.fields.CharField', [], {'max_length': '400'}),
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'moderated': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'user_profile': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.UserProfile']", 'db_column': "'user_profile_id'"})
        },
        'web.image': {
            'Meta': {'object_name': 'Image', 'db_table': "'image'"},
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'image_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'image_id'"}),
            'is_main': ('django.db.models.fields.BooleanField', [], {'default': 'False', 'max_length': '1'}),
            'path': ('django.db.models.fields.FilePathField', [], {'max_length': '100', 'db_column': "'path'"})
        },
        'web.poll': {
            'Meta': {'object_name': 'Poll', 'db_table': "'poll'"},
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'description': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'editable': ('django.db.models.fields.BooleanField', [], {'default': 'True'}),
            'multiple_choice': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'poll_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'poll_id'"}),
            'title': ('django.db.models.fields.CharField', [], {'max_length': '60'}),
            'voting_period_end': ('django.db.models.fields.DateTimeField', [], {}),
            'voting_period_start': ('django.db.models.fields.DateTimeField', [], {})
        },
        'web.pollsection': {
            'Meta': {'unique_together': "(('poll', 'section'),)", 'object_name': 'PollSection', 'db_table': "'poll_section'"},
            'poll': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Poll']", 'db_column': "'poll_id'"}),
            'poll_section_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'poll_section_id'"}),
            'section': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Section']", 'db_column': "'section_id'"})
        },
        'web.publication': {
            'Meta': {'object_name': 'Publication', 'db_table': "'publication'"},
            'article': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['web.Article']", 'unique': 'True', 'null': 'True', 'db_column': "'article_id'"}),
            'date': ('django.db.models.fields.DateTimeField', [], {'db_column': "'date'"}),
            'poll': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['web.Poll']", 'unique': 'True', 'null': 'True', 'db_column': "'poll_id'"}),
            'publication_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'publication_id'"}),
            'user_profile': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.UserProfile']", 'db_column': "'user_profile_id'"})
        },
        'web.section': {
            'Meta': {'object_name': 'Section', 'db_table': "'section'"},
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'name': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            'section_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'section_id'"})
        },
        'web.source': {
            'Meta': {'unique_together': "(('article', 'source_id'),)", 'object_name': 'Source', 'db_table': "'source'"},
            'article': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Article']", 'db_column': "'article_id'"}),
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'source_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'source_id'"}),
            'url': ('django.db.models.fields.CharField', [], {'max_length': '2000'})
        },
        'web.tag': {
            'Meta': {'unique_together': "(('article', 'tag_id'),)", 'object_name': 'Tag', 'db_table': "'tag'"},
            'article': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Article']", 'db_column': "'article_id'"}),
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'moderated': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'tag_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'tag_id'"}),
            'text': ('django.db.models.fields.CharField', [], {'max_length': '30'})
        },
        'web.userprofile': {
            'Meta': {'unique_together': "(('user_profile_id', 'user'),)", 'object_name': 'UserProfile', 'db_table': "'user_profile'"},
            'biography': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'profile_image': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['web.Image']", 'unique': 'True', 'null': 'True', 'db_column': "'profile_image_id'"}),
            'user': ('django.db.models.fields.related.OneToOneField', [], {'to': u"orm['auth.User']", 'unique': 'True'}),
            'user_profile_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'user_profile_id'"})
        },
        'web.usersection': {
            'Meta': {'unique_together': "(('user_profile', 'section'),)", 'object_name': 'UserSection', 'db_table': "'user_section'"},
            'section': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Section']", 'db_column': "'section_id'"}),
            'user_profile': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.UserProfile']", 'db_column': "'user_profile_id'"}),
            'user_section_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'user_section_id'"})
        },
        'web.vote': {
            'Meta': {'unique_together': "(('poll', 'vote_id', 'choice'),)", 'object_name': 'Vote', 'db_table': "'vote'"},
            'choice': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Choice']", 'db_column': "'choice_id'"}),
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'poll': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Poll']", 'db_column': "'poll_id'"}),
            'user_profile': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.UserProfile']", 'db_column': "'user_profile_id'"}),
            'vote_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'vote_id'"})
        }
    }

    complete_apps = ['web']