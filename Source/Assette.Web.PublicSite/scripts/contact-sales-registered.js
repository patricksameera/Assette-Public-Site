$(document).ready(function () {
    //debugger;

    // water mar
    $("#txtDescription").Watermark("Anything in particular you want to discuss with us?");

    // text box focus
    $('.field input').focus(function () {
        //debugger;
        $(this).css({ 'border': '1px solid #66cc00' })
    });

    // text box blur
    $('.field input').blur(function () {
        //debugger;
        //$(this).css({ 'border-left': '1px solid #E5E5E5', 'border-right': '1px solid #E5E5E5', 'border-top': '0px solid #F2F2F2', 'border-bottom': '0px solid #F2F2F2' });
        $(this).css({ 'border-left': '0px solid #F2F2F2', 'border-right': '0px solid #F2F2F2', 'border-top': '0px solid #F2F2F2', 'border-bottom': '0px solid #F2F2F2' });
    });

})


// form validation //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function UserRegistration() {
    //debugger;

    var retValue = checkFormInputs();

    if (retValue == true) {
        //debugger;

        $("#LoadingImage").css("display", "inline");

        return true;
    }
    else {
        //debugger;

        var message = "Please correct the following errors, then resubmit: </br>";

        for (i = 0; i < retValue.length; i++) {
            message += "* " + retValue[i] + "</br>";
        }

        // show message bar
        $('#message_bar').displayMessage({
            message: message,
            background: '#111111',
            color: '#FFFFFF',
            speed: 'slow',
            skin: 'red',
            position: 'fixed',
            autohide: false
        });

        $("#message_bar").css("left", 125);
        $("#message_bar").css("top", 250);

        return false;
    }
}

function checkFormInputs() {
    //debugger;

    // get values
    var description = $.trim($('#txtDescription').val());

    // set initial values - watermark
    if (description == "Anything in particular you want to discuss with us?") description = "";

    var retValue = true;
    var errorRows = [];

    if (description == '') {
        errorRows.push("Comment field is blank");
        retValue = false;
    }

    if (retValue != true) {
        retValue = errorRows;
    }

    return retValue;
}

