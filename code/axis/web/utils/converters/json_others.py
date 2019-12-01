class JsonOthers(object):

    @staticmethod
    def image_paths_to_json(items):
        result = list()
        if items is not None:
            for path in items:
                image_path = {
                    'image_path': path,

                }
                result.append(image_path)
        return result