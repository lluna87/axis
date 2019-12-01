# -*- coding: utf-8 -*-
import inspect
import logging
import os
import web.constants.const as const
from django.utils.datetime_safe import datetime
from django.utils.timezone import utc

class Logger(object):
    FORMAT = '%(asctime)-15s %(message)s'
    now = datetime.utcnow().replace(tzinfo=utc)
    DATE = str(now.day) + '-' + str(now.month) + '-' + str(now.year)
    DATE_FORMAT = '%m/%d/%Y %I:%M %p'
    FILENAME = const.LOGS_PATH + DATE + '_actividad.log'

    @classmethod
    def info(cls, message):
        cls.__find_logs_dir__()

        logging.basicConfig(filename=cls.FILENAME, level=logging.INFO, format=cls.FORMAT, datefmt=cls.DATE_FORMAT)
        logging.info(message)

    @classmethod
    def warning(cls, message):
        cls.__find_logs_dir__()
        logging.basicConfig(filename=cls.FILENAME, level=logging.WARNING, format=cls.FORMAT, datefmt=cls.DATE_FORMAT)
        logging.warning(message)

    @classmethod
    def error(cls, message):
        cls.__find_logs_dir__()
        logging.basicConfig(filename=cls.FILENAME, level=logging.ERROR, format=cls.FORMAT, datefmt=cls.DATE_FORMAT)
        frame = inspect.currentframe()
        line_no = inspect.getlineno(frame)
        logging.error("ln " + str(line_no) + ": " + message)

    @classmethod
    def debug(cls, message):
        cls.__find_logs_dir__()
        logging.basicConfig(filename=cls.FILENAME, level=logging.DEBUG, format=cls.FORMAT, datefmt=cls.DATE_FORMAT)
        logging.debug(message)

    @classmethod
    def __find_logs_dir__(cls):
        if not os.path.exists(const.LOGS_PATH):
            os.makedirs(const.LOGS_PATH)

    @classmethod
    def log_exception(cls, origin, exception):
        cls.error("Origen: " + origin)
        cls.error(exception.message)
