var FireBugConsoleLogging = 0;

// for all browser logging
if (!window.console) window.console = {};
if (!window.console.log) window.console.log = function () { };

// email validation ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function isValidEmailAddress(emailAddress) {
    //    var pattern = new RegExp(/^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?$/i);
    //    return pattern.test(emailAddress);

    var pattern = new RegExp(/^[+a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i);
    return pattern.test(emailAddress);
};

// get query string value ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function getQueryStringParameterByName(name) {
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(window.location.search);
    if (results == null) {
        return "";
    }
    else {
        return decodeURIComponent(results[1].replace(/\+/g, " "));
    }
}

// json break characters ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function EscapeJsonBreakCharacters(json) {
    //debugger;

    /*
    Quotation mark (")
    Backslash (\)
    Backspace (b)
    Formfeed (f)
    Newline (n)
    Carriage return (r)
    Horizontal tab (t)
    Four-hexadecimal-digits (uhhhh)
    */

    var rtnJson;

    /*
    rtnJson = json.replace("\n", "\\n");
    rtnJson = rtnJson.replace('\b', '\\b"');
    rtnJson = rtnJson.replace('\f', '\\f"');
    rtnJson = rtnJson.replace('\r', '\\r"');
    rtnJson = rtnJson.replace('\t', '\\t"');
    */

    // replace backslash
    rtnJson = json.replace(/\\/g, "\\\\");

    // replace back space
    //rtnJson = rtnJson.replace(/\b/g, "\\b");

    // replace form feed
    rtnJson = rtnJson.replace(/\f/g, "\\f");

    // replace new line
    rtnJson = rtnJson.replace(/\n/g, "\\n");

    // replace - Carriage return (r)
    rtnJson = rtnJson.replace(/(\r\n|\r|\n)/g, "\\n");

    // replace tab
    rtnJson = rtnJson.replace(/\t/g, "\\t");

    return rtnJson;
}