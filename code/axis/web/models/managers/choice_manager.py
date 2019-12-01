from django.db import models
import web
from web.utils.logger import Logger
import web.helpers.db_helper as dbh

class ChoiceManager(models.Manager):

    def load(self, poll_id):
        result = list()
        try:
            result = self.filter(poll_id=poll_id, deleted=False)
        except Exception as ex:
            Logger.log_exception("ChoiceManager.load", ex)
        return  result

    def insert(self, poll_id, text):
        new_choice = None
        try:
            new_choice = web.models.Choice()
            new_choice.poll_id = poll_id
            new_choice.choice_id = dbh.DBHelper.next_seq_value('choice_id_seq')
            new_choice.text = text
            new_choice.deleted = False
            new_choice.save()
        except Exception as ex:
            Logger.log_exception("ChoiceManager.insert", ex)
        return new_choice

    def insert_list(self, poll_id, collection):
        try:
            for choice in collection:
                self.insert(poll_id, choice.text)
        except Exception as ex:
            Logger.log_exception("ChoiceManager.insert_list", ex)

    def insert_texts(self, poll_id, text_collection):
        try:
            for choice_text in text_collection:
                self.insert(poll_id, choice_text)
        except Exception as ex:
            Logger.log_exception("ChoiceManager.insert_texts", ex)

    def create_temp(self, text):
        new_choice = None
        try:
            new_choice = web.models.Choice()
            new_choice.poll_id = 0
            new_choice.choice_id = 0
            new_choice.text = text
            new_choice.deleted = False
        except Exception as ex:
            Logger.log_exception("ChoiceManager.create_temp", ex)
        return new_choice

    def update(self, poll_id, choice_id, text):
        choice = None
        try:
            choice = self.get(poll_id=poll_id, choice_id=choice_id)
            choice.text = text
            choice.save()
        except Exception as ex:
            Logger.log_exception("ChoiceManager.update", ex)
        return choice

    def convert_to_choice(self, item):
        result = None
        try:
            if u'text' in item and  item[u'text'] != "":
                choice = web.models.Choice()
                choice.poll_id = (int(item[u'poll_id']) if u'poll_id' in item else 0)
                choice.choice_id = (int(item[u'choice_id']) if u'choice_id' in item else 0)
                choice.text = item[u'text']
            else:
                choice = None
            result = choice
        except Exception as ex:
            Logger.log_exception("ChoiceManager.conver_to_choice", ex)
        return result


    def to_choice_list(self, temp_items):
        result = list()
        for item in temp_items:
            converted = self.convert_to_choice(item)
            if (converted is not None):
                result.append(converted)
        return result