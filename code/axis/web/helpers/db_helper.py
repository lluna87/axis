from django.db import connection

class DBHelper(object):

    @classmethod
    def next_seq_value(cls, seq_name):
        cursor = connection.cursor()
        cursor.execute("select nextval('" + seq_name + "')")
        seq_value = cursor.fetchone()[0]
        return seq_value