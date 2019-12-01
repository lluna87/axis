String.prototype.containsStr = function (subStr) {
    return (this !== undefined) ? this.toString().toLowerCase().indexOf(subStr) >= 0 : false;
};

addJavaScriptRef = function(ref){
    var jQueryExtRef = document.createElement('script');
    jQueryExtRef.setAttribute("type","text/javascript");
    jQueryExtRef.setAttribute("src", ref);
    document.getElementsByTagName("head")[0].appendChild(jQueryExtRef);
};
