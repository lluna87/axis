from web.utils.logger import Logger

class JsonTag(object):

    @classmethod
    def to_json_for_select(cls, tags):
        result = list()
        for tag in tags:
            try:
                item = {
                    'tag': tag.text
                }
                result.append(item)
            except Exception as ex:
                Logger.log_exception("JsonTag.to_json_for_select", ex)
        return result

    @classmethod
    def to_json_list(cls, tags):
        result = list()
        for tag in tags:
            try:
                item = {
                    'tag_id': tag.tag_id,
                    'tag_text':tag.text
                }
                result.append(item)
            except Exception as ex:
                Logger.log_exception("JsonTag.to_json_list", ex)
        return result