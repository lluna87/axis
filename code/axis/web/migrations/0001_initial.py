# -*- coding: utf-8 -*-
from south.utils import datetime_utils as datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Image'
        db.create_table('image', (
            ('image_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='image_id')),
            ('path', self.gf('django.db.models.fields.FilePathField')(max_length=100, db_column='path')),
            ('is_main', self.gf('django.db.models.fields.BooleanField')(default=False, max_length=1)),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['Image'])

        # Adding model 'UserProfile'
        db.create_table('user_profile', (
            ('user_profile_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='user_profile_id')),
            ('user', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['auth.User'], unique=True)),
            ('profile_image', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['web.Image'], unique=True, null=True, db_column='profile_image_id')),
            ('biography', self.gf('django.db.models.fields.CharField')(max_length=300)),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['UserProfile'])

        # Adding unique constraint on 'UserProfile', fields ['user_profile_id', 'user']
        db.create_unique('user_profile', ['user_profile_id', 'user_id'])

        # Adding model 'Author'
        db.create_table('author', (
            ('author_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='author_id')),
            ('user_profile', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['web.UserProfile'], unique=True, null=True, db_column='user_profile_id')),
            ('added_by', self.gf('django.db.models.fields.related.ForeignKey')(related_name='added_by_user', db_column='added_by', to=orm['web.UserProfile'])),
            ('image', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Image'], unique=True, null=True)),
            ('first_name', self.gf('django.db.models.fields.CharField')(max_length=30, null=True)),
            ('last_name', self.gf('django.db.models.fields.CharField')(max_length=30, null=True)),
            ('biography', self.gf('django.db.models.fields.CharField')(max_length=1000, null=True)),
            ('description', self.gf('django.db.models.fields.CharField')(max_length=300)),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['Author'])

        # Adding model 'Article'
        db.create_table('article', (
            ('article_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True)),
            ('author', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Author'], null=True)),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=80)),
            ('content_summary', self.gf('django.db.models.fields.CharField')(max_length=1000)),
            ('body_text', self.gf('django.db.models.fields.CharField')(max_length=15000)),
            ('visits', self.gf('django.db.models.fields.BigIntegerField')(default=0)),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['Article'])

        # Adding model 'Poll'
        db.create_table('poll', (
            ('poll_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='poll_id')),
            ('title', self.gf('django.db.models.fields.CharField')(max_length=60)),
            ('description', self.gf('django.db.models.fields.CharField')(max_length=300)),
            ('multiple_choice', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('voting_period_start', self.gf('django.db.models.fields.DateTimeField')()),
            ('voting_period_end', self.gf('django.db.models.fields.DateTimeField')()),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('editable', self.gf('django.db.models.fields.BooleanField')(default=True)),
        ))
        db.send_create_signal('web', ['Poll'])

        # Adding model 'Choice'
        db.create_table('choice', (
            ('poll', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Poll'], db_column='poll_id')),
            ('choice_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='choice_id')),
            ('text', self.gf('django.db.models.fields.CharField')(max_length=200)),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['Choice'])

        # Adding unique constraint on 'Choice', fields ['poll', 'choice_id']
        db.create_unique('choice', ['poll_id', 'choice_id'])

        # Adding model 'Publication'
        db.create_table('publication', (
            ('publication_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='publication_id')),
            ('article', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['web.Article'], unique=True, null=True, db_column='article_id')),
            ('poll', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['web.Poll'], unique=True, null=True, db_column='poll_id')),
            ('user_profile', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.UserProfile'], db_column='user_profile_id')),
            ('date', self.gf('django.db.models.fields.DateTimeField')(db_column='date')),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['Publication'])

        # Adding model 'Section'
        db.create_table('section', (
            ('section_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='section_id')),
            ('name', self.gf('django.db.models.fields.CharField')(max_length=30)),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['Section'])

        # Adding model 'ArticleSection'
        db.create_table('article_section', (
            ('article_section_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='article_section_id')),
            ('section', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Section'], db_column='section_id')),
            ('article', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Article'], db_column='article_id')),
        ))
        db.send_create_signal('web', ['ArticleSection'])

        # Adding unique constraint on 'ArticleSection', fields ['article', 'section']
        db.create_unique('article_section', ['article_id', 'section_id'])

        # Adding model 'PollSection'
        db.create_table('poll_section', (
            ('poll_section_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='poll_section_id')),
            ('section', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Section'], db_column='section_id')),
            ('poll', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Poll'], db_column='poll_id')),
        ))
        db.send_create_signal('web', ['PollSection'])

        # Adding unique constraint on 'PollSection', fields ['poll', 'section']
        db.create_unique('poll_section', ['poll_id', 'section_id'])

        # Adding model 'Source'
        db.create_table('source', (
            ('article', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Article'], db_column='article_id')),
            ('source_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='source_id')),
            ('url', self.gf('django.db.models.fields.CharField')(max_length=2000)),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['Source'])

        # Adding unique constraint on 'Source', fields ['article', 'source_id']
        db.create_unique('source', ['article_id', 'source_id'])

        # Adding model 'Tag'
        db.create_table('tag', (
            ('article', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Article'], db_column='article_id')),
            ('tag_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='tag_id')),
            ('text', self.gf('django.db.models.fields.CharField')(max_length=30)),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('moderated', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['Tag'])

        # Adding unique constraint on 'Tag', fields ['article', 'tag_id']
        db.create_unique('tag', ['article_id', 'tag_id'])

        # Adding model 'Vote'
        db.create_table('vote', (
            ('poll', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Poll'], db_column='poll_id')),
            ('choice', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Choice'], db_column='choice_id')),
            ('vote_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='vote_id')),
            ('user_profile', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.UserProfile'], db_column='user_profile_id')),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['Vote'])

        # Adding unique constraint on 'Vote', fields ['poll', 'vote_id', 'choice']
        db.create_unique('vote', ['poll_id', 'vote_id', 'choice_id'])

        # Adding model 'ArticleRate'
        db.create_table('article_rate', (
            ('article', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Article'], db_column='article_id')),
            ('article_rate_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True)),
            ('user_profile', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.UserProfile'], db_column='user_profile_id')),
            ('rating', self.gf('django.db.models.fields.PositiveSmallIntegerField')(default=0)),
            ('date', self.gf('django.db.models.fields.DateTimeField')()),
        ))
        db.send_create_signal('web', ['ArticleRate'])

        # Adding unique constraint on 'ArticleRate', fields ['article', 'user_profile']
        db.create_unique('article_rate', ['article_id', 'user_profile_id'])

        # Adding model 'AuthorRate'
        db.create_table('author_rate', (
            ('author', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Author'], db_column='author_id')),
            ('author_rate_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True)),
            ('user_profile', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.UserProfile'], db_column='user_profile_id')),
            ('rating', self.gf('django.db.models.fields.PositiveSmallIntegerField')(default=0)),
            ('date', self.gf('django.db.models.fields.DateTimeField')()),
        ))
        db.send_create_signal('web', ['AuthorRate'])

        # Adding unique constraint on 'AuthorRate', fields ['author', 'author_rate_id']
        db.create_unique('author_rate', ['author_id', 'author_rate_id'])

        # Adding model 'PublisherRate'
        db.create_table('publisher_rate', (
            ('pub_user_profile', self.gf('django.db.models.fields.related.ForeignKey')(related_name='pub_user_profile', db_column='pub_user_profile_id', to=orm['web.UserProfile'])),
            ('publisher_rate_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True)),
            ('user_profile', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.UserProfile'], db_column='user_profile_id')),
            ('rating', self.gf('django.db.models.fields.PositiveSmallIntegerField')(default=0)),
            ('date', self.gf('django.db.models.fields.DateTimeField')()),
        ))
        db.send_create_signal('web', ['PublisherRate'])

        # Adding unique constraint on 'PublisherRate', fields ['pub_user_profile', 'publisher_rate_id']
        db.create_unique('publisher_rate', ['pub_user_profile_id', 'publisher_rate_id'])

        # Adding model 'Comment'
        db.create_table('comment', (
            ('article', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Article'], db_column='article_id')),
            ('comment_id', self.gf('django.db.models.fields.IntegerField')(primary_key=True, db_column='comment_id')),
            ('user_profile', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.UserProfile'], db_column='user_profile_id')),
            ('content', self.gf('django.db.models.fields.CharField')(max_length=400)),
            ('deleted', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('moderated', self.gf('django.db.models.fields.BooleanField')(default=False)),
        ))
        db.send_create_signal('web', ['Comment'])

        # Adding unique constraint on 'Comment', fields ['article', 'comment_id']
        db.create_unique('comment', ['article_id', 'comment_id'])

        # Adding model 'ArticleImage'
        db.create_table('article_image', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('article', self.gf('django.db.models.fields.related.OneToOneField')(to=orm['web.Article'], unique=True, null=True, db_column='article_id')),
            ('image', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['web.Image'], unique=True, null=True, db_column='image_id')),
        ))
        db.send_create_signal('web', ['ArticleImage'])

        # Adding unique constraint on 'ArticleImage', fields ['article', 'image']
        db.create_unique('article_image', ['article_id', 'image_id'])


    def backwards(self, orm):
        # Removing unique constraint on 'ArticleImage', fields ['article', 'image']
        db.delete_unique('article_image', ['article_id', 'image_id'])

        # Removing unique constraint on 'Comment', fields ['article', 'comment_id']
        db.delete_unique('comment', ['article_id', 'comment_id'])

        # Removing unique constraint on 'PublisherRate', fields ['pub_user_profile', 'publisher_rate_id']
        db.delete_unique('publisher_rate', ['pub_user_profile_id', 'publisher_rate_id'])

        # Removing unique constraint on 'AuthorRate', fields ['author', 'author_rate_id']
        db.delete_unique('author_rate', ['author_id', 'author_rate_id'])

        # Removing unique constraint on 'ArticleRate', fields ['article', 'user_profile']
        db.delete_unique('article_rate', ['article_id', 'user_profile_id'])

        # Removing unique constraint on 'Vote', fields ['poll', 'vote_id', 'choice']
        db.delete_unique('vote', ['poll_id', 'vote_id', 'choice_id'])

        # Removing unique constraint on 'Tag', fields ['article', 'tag_id']
        db.delete_unique('tag', ['article_id', 'tag_id'])

        # Removing unique constraint on 'Source', fields ['article', 'source_id']
        db.delete_unique('source', ['article_id', 'source_id'])

        # Removing unique constraint on 'PollSection', fields ['poll', 'section']
        db.delete_unique('poll_section', ['poll_id', 'section_id'])

        # Removing unique constraint on 'ArticleSection', fields ['article', 'section']
        db.delete_unique('article_section', ['article_id', 'section_id'])

        # Removing unique constraint on 'Choice', fields ['poll', 'choice_id']
        db.delete_unique('choice', ['poll_id', 'choice_id'])

        # Removing unique constraint on 'UserProfile', fields ['user_profile_id', 'user']
        db.delete_unique('user_profile', ['user_profile_id', 'user_id'])

        # Deleting model 'Image'
        db.delete_table('image')

        # Deleting model 'UserProfile'
        db.delete_table('user_profile')

        # Deleting model 'Author'
        db.delete_table('author')

        # Deleting model 'Article'
        db.delete_table('article')

        # Deleting model 'Poll'
        db.delete_table('poll')

        # Deleting model 'Choice'
        db.delete_table('choice')

        # Deleting model 'Publication'
        db.delete_table('publication')

        # Deleting model 'Section'
        db.delete_table('section')

        # Deleting model 'ArticleSection'
        db.delete_table('article_section')

        # Deleting model 'PollSection'
        db.delete_table('poll_section')

        # Deleting model 'Source'
        db.delete_table('source')

        # Deleting model 'Tag'
        db.delete_table('tag')

        # Deleting model 'Vote'
        db.delete_table('vote')

        # Deleting model 'ArticleRate'
        db.delete_table('article_rate')

        # Deleting model 'AuthorRate'
        db.delete_table('author_rate')

        # Deleting model 'PublisherRate'
        db.delete_table('publisher_rate')

        # Deleting model 'Comment'
        db.delete_table('comment')

        # Deleting model 'ArticleImage'
        db.delete_table('article_image')


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
        'web.authorrate': {
            'Meta': {'unique_together': "(('author', 'author_rate_id'),)", 'object_name': 'AuthorRate', 'db_table': "'author_rate'"},
            'author': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.Author']", 'db_column': "'author_id'"}),
            'author_rate_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True'}),
            'date': ('django.db.models.fields.DateTimeField', [], {}),
            'rating': ('django.db.models.fields.PositiveSmallIntegerField', [], {'default': '0'}),
            'user_profile': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.UserProfile']", 'db_column': "'user_profile_id'"})
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
            'deleted': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'poll': ('django.db.models.fields.related.OneToOneField', [], {'to': "orm['web.Poll']", 'unique': 'True', 'null': 'True', 'db_column': "'poll_id'"}),
            'publication_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True', 'db_column': "'publication_id'"}),
            'user_profile': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['web.UserProfile']", 'db_column': "'user_profile_id'"})
        },
        'web.publisherrate': {
            'Meta': {'unique_together': "(('pub_user_profile', 'publisher_rate_id'),)", 'object_name': 'PublisherRate', 'db_table': "'publisher_rate'"},
            'date': ('django.db.models.fields.DateTimeField', [], {}),
            'pub_user_profile': ('django.db.models.fields.related.ForeignKey', [], {'related_name': "'pub_user_profile'", 'db_column': "'pub_user_profile_id'", 'to': "orm['web.UserProfile']"}),
            'publisher_rate_id': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True'}),
            'rating': ('django.db.models.fields.PositiveSmallIntegerField', [], {'default': '0'}),
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