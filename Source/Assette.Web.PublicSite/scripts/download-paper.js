$(document).ready(function () {
    //debugger;

    // water mark
    $("#txtFirstName").Watermark("FIRST NAME *");
    $("#txtLastName").Watermark("LAST NAME *");
    $("#txtEmail").Watermark("EMAIL *");
    $("#txtTitle").Watermark("TITLE *");
    $("#txtFirmName").Watermark("FIRM NAME *");
    $("#txtDescription").Watermark("Anything in particular you want to discuss with us?");

    //$("#drpJobFunction").selectbox('attach');
    //$("#drpFirmAum").selectbox('attach');
    //$("#drpFirmType").selectbox('attach');

    $('.selectInput').focus(function () {
        //debugger;

        $(this).css('border', '1px solid #66cc00');
    });

    $('.selectInput').blur(function () {
        //debugger;

        $(this).css('border', '1px solid #EBEBEB');
    });


    // text box focus
    $('.field input').focus(function () {
        //debugger;

        $(this).css({ 'border': '1px solid #66cc00' });
    });

    // text box blur
    $('.field input').blur(function () {
        //debugger;

        $(this).css({ 'border-left': '1px solid #EBEBEB', 'border-right': '1px solid #EBEBEB', 'border-top': '1px solid #EBEBEB', 'border-bottom': '1px solid #EBEBEB' });
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
    var firstName = $.trim($('#txtFirstName').val());
    var lastName = $.trim($('#txtLastName').val());
    var email = $.trim($('#txtEmail').val());
    var title = $.trim($('#txtTitle').val());
    var firmName = $.trim($('#txtFirmName').val());
    var description = $.trim($('#txtDescription').val());
    var jobFunction = $("#drpJobFunction").val();
    var firmAum = $("#drpFirmAum").val();
    var firmType = $("#drpFirmType").val();

    // set initial values - watermark
    if (firstName == "FIRST NAME *") firstName = "";
    if (lastName == "LAST NAME *") lastName = "";
    if (email == "EMAIL *") email = "";
    if (title == "TITLE *") title = "";
    if (firmName == "FIRM NAME *") firmName = "";
    if (description == "Anything in particular you want to discuss with us?") description = "";

    var retValue = true;
    var errorRows = [];

    if (firstName == '') {
        errorRows.push("First Name field is blank");
        retValue = false;
    }

    if (lastName == '') {
        errorRows.push("Last Name field is blank");
        retValue = false;
    }

    if (title == '') {
        errorRows.push("Title field is blank");
        retValue = false;
    }

    if (firmName == '') {
        errorRows.push("Firm Name field is blank");
        retValue = false;
    }

    if (email == '') {
        errorRows.push("Email field is blank");
        retValue = false;
    }
    else if (!isValidEmailAddress(email)) {
        errorRows.push("Email is in wrong format");
        retValue = false;
    }
    else {

    }

    if (jobFunction == '0') {
        errorRows.push("Select Job function");
        retValue = false;
    }

    if (firmAum == '0') {
        errorRows.push("Select Firm aum");
        retValue = false;
    }

    if (firmType == '0') {
        errorRows.push("Select Firm type");
        retValue = false;
    }

    if (retValue != true) {
        retValue = errorRows;
    }

    return retValue;
}

