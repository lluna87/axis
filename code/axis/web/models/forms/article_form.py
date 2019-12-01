# -*- coding: cp1252 -*
from django.forms import ModelForm, CharField, BooleanField, TextInput, Textarea, MultipleChoiceField, Select
from web.models import Article


class ArticleForm(ModelForm):

    title = CharField(label=u'Título', widget=TextInput(attrs={'class':'k-input k-textbox'}))
    content_summary = CharField(label=u'Resúmen de contenido', widget=Textarea(attrs={'class':'k-input k-textbox'}))
    body_text = CharField(label=u'Cuerpo', widget=Textarea(attrs={'class':'k-input k-textbox'}))
    deleted = BooleanField(label=u'Borrado')
    author = MultipleChoiceField(label=u'Autor', widget=TextInput())
    tags = CharField(label=u'Etiquetas', widget=Select(attrs={'multiple':'multiple', 'data-placeholder':'Agregar etiquetas...'}))

    class Meta:
        model=Article
        exclude = ('article_id',)