from web.utils.logger import Logger


class JsonSection(object):

    @staticmethod
    def to_json(section):
        result = None
        try:
            has_exclusive_articles = False
            try:
                article_section_set = section.articlesection_set.filter(article__deleted=False)
                for article_section in article_section_set:
                    article = article_section.article
                    other_poll_sections = article.articlesection_set.filter(section__deleted=False).exclude(section__section_id=section.section_id)
                    if len(other_poll_sections) == 0:
                        has_exclusive_articles = True
                        break
                    else:
                        has_exclusive_articles = False
            except Exception as ex:
                Logger.log_exception("JsonSection.to_json", ex)

            has_exclusive_polls = False
            try:
                poll_section_set = section.pollsection_set.filter(poll__deleted=False)
                for poll_section in poll_section_set:
                    poll = poll_section.poll
                    other_poll_sections = poll.pollsection_set.filter(section__deleted=False).exclude(section__section_id=section.section_id)
                    if len(other_poll_sections) == 0:
                        has_exclusive_polls = True
                        break
                    else:
                        has_exclusive_polls = False
            except Exception as ex:
                Logger.log_exception("JsonSection.to_json", ex)

            result = {
            'section_id': section.section_id,
            'name': section.name,
            'deleted': section.deleted,
            'has_exclusive_articles': has_exclusive_articles,
            'has_exclusive_polls': has_exclusive_polls
        }
        except Exception as ex:
            Logger.log_exception("JsonSection.to_json", ex)
        return result

    @staticmethod
    def to_json_list(query):
        result = list()
        if query is not None:
            for x in query:
                section = JsonSection.to_json(x)
                result.append(section)
        return result

    @staticmethod
    def to_json_for_combo(query):
        result = list()
        if query is not None:
            for section in query:
                item = {
                    'id': section.section_id,
                    'section': section.name,
                    }
                result.append(item)
        return result