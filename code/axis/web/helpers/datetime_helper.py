
# -*- coding: utf-8 -*-import locale
import locale
from datetime import datetime

from django.utils import timezone
from dateutil import parser

import web.constants.const as const
from web.utils.logger import Logger


class DateTimeHelper(object):

    @staticmethod
    def convert_input_str_to_datetime(datetime_str):
        date_time_result = None
        try:
            date_time_result = parser.parse(datetime_str)
        except Exception as ex:
            Logger.log_exception("DateTimeHelper.convert_input_str_to_datetime", ex)
        return date_time_result

    @classmethod
    def get_now_for_db(cls):
        return datetime.now().strftime("%Y-%m-%d %H:%M:%S ")

    @classmethod
    def serialize_long(cls, date):
        locale.setlocale(locale.LC_ALL, "")
        send_date = timezone.localtime(date)
        #send_date = date
        return send_date.strftime(const.LONG_DATE_FORMAT)

    @classmethod
    def serialize(cls, date):
        send_date = timezone.localtime(date)
        #send_date = date
        return send_date.strftime(const.SHORT_DATE_FORMAT)

    @classmethod
    def to_datetime_str(cls, date_time_obj):
        result = ""
        try:
            day = '0' + str(date_time_obj.day) if date_time_obj.day < 10 else str(date_time_obj.day)
            month = '0' + str(date_time_obj.month) if date_time_obj.month < 10 else str(date_time_obj.month)
            hours = '0' + str(date_time_obj.hour) if date_time_obj.hour < 10 else str(date_time_obj.hour)
            minutes = '0' + str(date_time_obj.minute) if date_time_obj.minute < 10 else str(date_time_obj.minute)
            result = day + '/' + month + '/' + str(date_time_obj.year) + ' ' + \
                     hours + ':' + minutes
        except Exception as ex:
            Logger.log_exception("DateTimeHelper.to_datetime_str", ex)
        return result