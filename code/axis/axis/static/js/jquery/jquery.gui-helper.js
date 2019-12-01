(function ($) {
    $.toShortDateTimeStr = function(date){
        var result ="";
        var dayNumber = date.getDate();
        var monthNumber = date.getMonth();
        var yearNumber = date.getFullYear();
        var hoursNumber = date.getHours();
        var minutesNumber = date.getMinutes();

        result += (dayNumber > 9) ? dayNumber : "0" + dayNumber;
        result += "/";
        result += (monthNumber > 9) ? monthNumber : "0" + monthNumber;
        result += "/";
        result += yearNumber;
        result += " ";
        result += (hoursNumber > 9) ? hoursNumber : "0" + hoursNumber;
        result += ":";
        result += (minutesNumber > 9) ? minutesNumber : "0" + minutesNumber;

        return result;
    };
    $.GuiHelper = {
        noArticlesMsgTemplate: '<div class="no-available-articles-msg">No existen articulos disponibles<\/div>',
        noPollsMsgTemplate: '<div class="no-available-polls-msg">No existen encuestas disponibles<\/div>',
        _pollBlockTemplate: '<div class="k-block k-info-colored k-header poll-container">' +
            '<div class="poll-block-title poll-block-field"><\/div>' +
            '<div class="poll-block-finished poll-block-field">Finalizada<\/div>' +
            '<div class="poll-block-descrip poll-block-field"><\/div>' +
            '<div class="poll-block-period poll-block-field"><span class="poll-period-label">Comienzo: <\/span><span class="poll-period-start"><\/span><\/div>' +
            '<div class="poll-block-period poll-block-field"><span class="poll-period-label">Fin: <\/span><span class="poll-period-end"><\/span><\/div>' +
            '<div class="poll-block-options"><\/div>' +
            '<div class="poll-block-field"><span>Votos totales: <\/span><span class="vote-count"><\/span><\/div>' +
            '<\/div>',
        _pollBlockYourVoteLegend: '<div class="poll-block-field"><div class="your-vote-color-ref"><\/div><span>Tus votos<\/span><\/div>',
        _pollOptionRadioTemplate: '<div id="poll-choice-" class="poll-block-option poll-block-field">' +
            '<input type="radio" onchange="$.GuiHelper._onChangePollRadio(this)" name="poll-choice-" value="">' +
            '<span class="poll-choice-text"><\/span><\/div>',
        _pollOptionCheckTemplate: '<div id="poll-choice-" class="poll-block-option poll-block-field">' +
            '<input type="checkbox" onchange="$.GuiHelper._onChangePollRadio(this)" name="poll-choice-" value="">' +
            '<span class="poll-choice-text"><\/span><\/div>',
        _pollOptionReadOnlyTemplate: '<div id="poll-choice-" class="poll-block-option poll-block-field">' +
            '<span class="poll-choice-text"><\/span><\/span><span> (Votos: <\/span><span class="poll-choice-vote-count"><\/span><span>)<\/span>' +
            '<\/div>',
        _pollVoteBtnTemplate: '<span class="poll-block-vote-btn k-button">Votar<\/span>',
        _articleBlockTemplate: '<div class="k-block article-block">' +
            '<a>' +
            '<span class="article-id" style="display: none;"></span>' +
            '<div class="article-block-sections"></div>' +
            '<div class="article-block-img"><img class="k-block" src="/axis/static/img/article_no_image.jpg"/></div>' +
            '<div class="article-block-title"></div>' +
            '<div class="article-block-summary"></div>' +
            '</a>' +
            '</div>',
        _articleBlockSectionTemplate: '<div class="k-block article-block-section">' +
            '<div class="section-name"><\/div>' +
            '<\/div>',
        _articleSearchBlockTemplate: '<div class="article-search-result">' +
            '<a>' +
            '<div  class="article-search-result-content">' +
            '<div class="article-search-sections"></div>' +
            '<div class="float-separator"></div>' +
            '<div class="article-search-title"></div>' +
            '<div class="article-search-summary"></div>' +
            '</div>' +
            '</a>' +
            '<div class="float-separator"></div>' +
            '</div>',
        _suggesteArticleLinkTpl: '<div class="bordered-bottom"><a class="suggested-article-link"></a></div>',
        _pollVoteAction: function(event){
            var button = $(event.currentTarget);
            var pollContainer = $(button).closest(".poll-container");
            var pollId = parseInt(pollContainer.attr("poll-id"));
            var selected = pollContainer.find("input:checked");
            var i = 0;
            var choices = [];
            $(selected).each(function(){
                var choice = $(this);
                choices[i] = parseInt(choice.attr("value"));
                i += 1;
            });
            var sendChoices = JSON.stringify(choices);
            var sendData = { pollId: pollId, choiceIds: sendChoices };
            $.ajax({
                url: VOTE_REGISTER_URL,
                type: 'POST',
                dataType: 'json',
                data: sendData,
                success: function (pollData){
                    pollContainer.slideUp(function(){
                        var updatedBlock = $.GuiHelper.getPollBlock(pollData);
                        pollContainer.html(updatedBlock.html());
                        pollContainer.slideDown();
                    });
                }
            });
        },
        _onChangePollRadio: function(input){
            var pollContainer = $(input).closest(".poll-container");
            var voteButtton = pollContainer.find(".poll-block-vote-btn");

            if (!$(pollContainer).find("input:checked").val()) {
                voteButtton.disableBtn();
            }
            else {
                voteButtton.unbind('click');
                voteButtton.enableBtn($.GuiHelper._pollVoteAction);
            }
        },
        getPollBlock: function (pollData, isReader){
            if (typeof isReader === "undefined" || isReader === null){
                isReader = false;
            }
            var pollOptionRadioTemplate = this._pollOptionRadioTemplate;
            var pollOptionCheckTemplate = this._pollOptionCheckTemplate;
            var pollOptionReadOnlyTemplate = this._pollOptionReadOnlyTemplate;

            var newPollBlock = $(this._pollBlockTemplate);
            newPollBlock.attr("id", "poll-id-" + pollData.poll_id);
            newPollBlock.attr("poll-id", pollData.poll_id);
            newPollBlock.find(".poll-block-title").html(pollData.title);
            newPollBlock.find(".poll-block-descrip").html(pollData.description);
            newPollBlock.find(".poll-period-start").html(pollData.voting_period_start);
            newPollBlock.find(".poll-period-end").html(pollData.voting_period_end);

            var totalVoteCount = 0;

            $(pollData.choices).each(function(){
                var choice = this;
                var newOptionBlock;
                if (pollData.user_voted != undefined && !pollData.user_voted && !pollData.finished && isReader){
                    newOptionBlock = (pollData.multiple_choice) ? $(pollOptionCheckTemplate) : $(pollOptionRadioTemplate);
                    newOptionBlock.find("input").attr("value", choice.choice_id);
                    newOptionBlock.find(".poll-choice-text").html(choice.text);
                    newOptionBlock.find("input").attr("name", newOptionBlock.find("input").attr("name") + pollData.poll_id);
                    newOptionBlock.attr("id", newOptionBlock.attr("id") + choice.choice_id);
                }
                else
                {
                    newOptionBlock = $(pollOptionReadOnlyTemplate);
                    newOptionBlock.find(".poll-choice-text").html(choice.text);
                    newOptionBlock.find(".poll-choice-vote-count").html(choice.vote_count);
                    newOptionBlock.attr("id", newOptionBlock.attr("id") + choice.choice_id);
                }
                newPollBlock.find(".poll-block-options").append(newOptionBlock);
                totalVoteCount += choice.vote_count;
            });
            $(pollData.user_choices).each(function(){
                var choiceId = this;
                var choiceBlock = newPollBlock.find("#poll-choice-" + choiceId);
                if (!choiceBlock.hasClass("user-choice")){
                    choiceBlock.addClass("user-choice");
                }
            });
            newPollBlock.find(".vote-count").html(totalVoteCount);
            if (pollData.user_voted != undefined && !pollData.user_voted && !pollData.finished){
                var voteButton = $(this._pollVoteBtnTemplate);
                newPollBlock.append(voteButton);
                voteButton.disableBtn();
            }
            else if (pollData.user_voted != undefined && pollData.user_voted){
                newPollBlock.append($(this._pollBlockYourVoteLegend));
            }
            if (pollData.finished){
                newPollBlock.find(".poll-block-finished").show();
            }
            return newPollBlock;
        },
        _articlePreviewClick: function(element){
            var article_id = parseInt($(element.currentTarget).find(".article-id").text());
            window.location = "/models/articles/read?article_id=" + article_id;
        },
        getArticleBlock: function(articleData){
            var newArticleBlock = $(this._articleBlockTemplate);
            newArticleBlock.find("a").attr("href", "/models/articles/read?article_id=" + articleData.article_id);
            newArticleBlock.attr("id", "article-" + articleData.article_id);
            newArticleBlock.find(".article-id").html(articleData.article_id);
            newArticleBlock.find(".article-block-sections div").html(articleData.sections_display);
            newArticleBlock.find(".article-block-title").html(articleData.title);
            newArticleBlock.find(".article-block-summary").html(articleData.content_summary);
            var img = newArticleBlock.find(".article-block-img img");
            $.ajax({
                url: articleData.image_path,
                type: "HEAD",
                success: function () {
                    if (articleData.image_path!= ""){
                        img.attr("src", articleData.image_path);
                    }
                }
            });
            var sectionTemplate = this._articleBlockSectionTemplate;
            var articleSectionsBlock = newArticleBlock.find(".article-block-sections");
            $(articleData.sections).each(function(){
                var section = this;
                var newSectionBlock = $(sectionTemplate);
                var sectionNameSpan = newSectionBlock.find(".section-name");
                sectionNameSpan.attr("section-id", section.section_id);
                sectionNameSpan.attr("id", "section-" +  section.section_id);
                sectionNameSpan.html(section.name);
                articleSectionsBlock.append(sectionNameSpan);
            });
            if (articleData.sections.length > 0){
                articleSectionsBlock.show();
            }

            newArticleBlock.click($.GuiHelper._articlePreviewClick);
            return newArticleBlock;
        },
        getArticleSearchBlock: function(articleData){
            var articleSearchBlock = $(this._articleSearchBlockTemplate);
            $(articleSearchBlock).find(".article-search-sections").empty();
            var sectionTemplate = this._articleBlockSectionTemplate;
            var articleSectionsBlock = articleSearchBlock.find(".article-search-sections");
            $(articleData.sections).each(function(){
                var section = this;
                var newSectionBlock = $(sectionTemplate);
                var sectionNameSpan = newSectionBlock.find(".section-name");
                sectionNameSpan.attr("section-id", section.section_id);
                sectionNameSpan.attr("id", "section-" +  section.section_id);
                sectionNameSpan.html(section.name);
                articleSectionsBlock.append(sectionNameSpan);
            });
            $(articleSearchBlock).find(".article-search-title").html(articleData.title);
            $(articleSearchBlock).find(".article-search-summary").html(articleData.content_summary);

            var articleUrl = ARTICLE_READ_URL + "?article_id=" + articleData.article_id;
            $(articleSearchBlock).find("a").attr("href", articleUrl);
            return articleSearchBlock;
        },
        getSuggestedArticleBlock: function(article){
            var linkBlock = $(this._suggesteArticleLinkTpl);

            linkBlock.find(".suggested-article-link").html(article.title);
            linkBlock.find(".suggested-article-link").attr("href", "/models/articles/read?article_id=" + article.article_id);

            return linkBlock;
        },
        PollDataItem: function (color)
        {
            this.poll_id = 0;
            this.voting_period_start = $.toShortDateTimeStr(new Date());
            this.voting_period_end = $.toShortDateTimeStr(new Date());
            this.title = "";
            this.description = "";
            this.multiple_choice = false;
        }
    };
})(jQuery);