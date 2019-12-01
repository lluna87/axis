from web.utils.logger import Logger


class JsonSource(object):

    @classmethod
    def to_json_for_select(cls, sources):
        result = list()
        if sources is not None:
            for source in sources:
                item = {
                    'url': source.url,
                    }
                result.append(item)
        return result

    @classmethod
    def to_json_list(cls, sources):
        result = list()
        for source in sources:
            try:
                item = {
                    'source_id': source.source_id,
                    'url':source.url
                }
                result.append(item)
            except Exception as ex:
                Logger.log_exception("JsonSource.to_json_list", ex)
        return result