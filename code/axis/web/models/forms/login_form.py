# -*- coding: cp1252 -*
from django.forms import CharField, TextInput, Form, EmailField, PasswordInput


class LoginForm(Form):

    email = EmailField(label=u'ID de art�culo', widget=TextInput(attrs={'class':'k-input k-textbox login-window-input'}))
    password = CharField(label=u'T�tulo', widget=PasswordInput(attrs={'class':'k-input k-textbox login-window-input'}))
