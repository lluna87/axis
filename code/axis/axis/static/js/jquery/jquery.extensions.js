(function ($) {
    $.fn.attrDefined = function (attrName) {
        if (attrName !== undefined) {
            var attr = $(this).attr(attrName);
            if (typeof attr !== 'undefined' && attr !== false)
                return true
        }
        return false;
    };
    $.fn.hasVal = function () {
        return $(this).val() !== undefined && $(this).val() != "";
    };
    $.fn.textLength = function () {
        var element = $(this[0]);
        if (element.prop("tagName") == "TEXTAREA") {
            return element.val().length;
        }
        return 0;
    };
    $.fn.formData = function () {
        if (this[0].tagName == "FORM") {
            var targetForm = this;
            var data = {};
            targetForm.find(":input").each(function () {
                var item = $(this);
                if (item.attrDefined("name") && item.attrDefined("id")){
                    if (item.attr("type") === "checkbox"){
                        data[item.attr("name")] = item.is(":checked");
                    }
                    else {
                        data[item.attr("name")] = item.val();
                    }
                    console.log(item.attr("name"));
                }
            });
            return data;
        }
        return {};
    };
    $.fn.printCharCount = function (selector) {
        var element = $(this[0]);
        if (element.prop("tagName") == "TEXTAREA") {
            $(selector).html(element.textLength());
        }
    };
    $.fn.textMaxLength = function () {
        var element = $(this[0]);
        var validItem = element.value !== undefined && element.value.length;
        if (validItem) {
            var limit = parseInt(element.attr("maxlength"));
            if (!isNaN(limit) && element.value.length > limitNum) {
                element.value = element.value.substring(0, limitNum);
            }
        }
    };
    $.fn.onEnterKey = function (function_call){
        if (typeof function_call == "function"){
            $(this).bind("keypress", function(event){
                var enterKey = 13;
                if (event.keyCode == enterKey) {
                    function_call();
                    return false;
                }
            });
        }
    };$.fn.removeKeyPress = function (){
            $(this).unbind("keypress");
    };
    $.fn.searchByKey = function (key, value) {
        var itemsIsObject, result, items, keyDefined, valueDefined, keyHasValue;
        items = this;
        keyDefined = key !== undefined;
        valueDefined = value !== undefined;
        keyHasValue = !$.str.isNullOrEmptyStr(key);
        itemsIsObject = "object" === typeof items;
        if (keyDefined && valueDefined && keyHasValue) {
            if (itemsIsObject) {
                $(items).each(function () {
                    if (this[key] === value) {
                        result = this;
                        return false;
                    }
                });
            }
        }
        return result;
    };
    $.fn.disableBtn = function () {
        $(this).css('opacity', '0.4').unbind('click');
    };
    $.fn.enableBtn = function (clickAction) {
        if (typeof clickAction == 'function'){
            $(this).css('opacity', '1').click(clickAction);
        }
    };
    $.fn.disableGridBtn = function () { $(this).css('opacity', '0.2').bind('click', function (e) { return false; }) };
    $.fn.setLoadingMask = function (mini){
        var loadingMask = '';
        if (mini != undefined && mini){
            loadingMask = $('<div class="loading-mask-mini k-block"><div class="loading-img-mini"></div></div>');
        }
        else{
            loadingMask = $('<div class="loading-mask custom-loading-mask"><div class="loading-img"></div></div>' +
                '<div class="float-separator"></div>');
        }
        $(this).empty().append(loadingMask);
        $(this).show();
    };
    $.str = {
        isNullOrEmptyStr: function (element) {
            return element === "string" && element.length > 0;
        },
        containsStr: function (element, substring) {
            return typeof element === "string" && typeof substring === "string" && element.indexOf(substring) >= 0;
        }
    };

})(jQuery);