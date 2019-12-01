# -*- coding: cp1252 -*
from django.forms import CharField, TextInput, Form, EmailField, PasswordInput


class LoginForm(Form):

    email = EmailField(label=u'ID de artículo', widget=TextInput(attrs={'class':'k-input k-textbox login-window-input'}))
    password = CharField(label=u'Título', widget=PasswordInput(attrs={'class':'k-input k-textbox login-window-input'}))
