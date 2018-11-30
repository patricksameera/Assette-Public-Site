<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign-up-request-demo-registered.aspx.cs"
    Inherits="Assette.Web.PublicSite.sign_up_request_demo_description" Title="Request a Live Demo" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <title>ASSETTE - Client Communications Software for Investment Management Firms</title>
    <%--<link rel="SHORTCUT ICON" href="http://gallery.dev.sl.bta.cc/assette.ico" />--%>
    <link rel="SHORTCUT ICON" href="assette.ico" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,600italic,400italic,700,700italic,300,300italic"
        rel='stylesheet' type='text/css'>
    <%--StyleSheet Reference--%>
    <link href="styles/assette.css?v=1.0.0.24" rel="stylesheet" />
    <link href="styles/slider.css" rel="stylesheet" />
    <link href="styles/jquery-ui.css" rel="stylesheet" type="text/css" />
    <%--Script Reference--%>
    <script src="scripts/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="scripts/jquery-ui.js" type="text/javascript"></script>
    <script src="scripts/assette.js?v=1.0.0.24" type="text/javascript"></script>
    <script src="scripts/request-demo-description.js" type="text/javascript"></script>
    <script src="scripts/base.js" type="text/javascript"></script>
    <%--fancy box--%>
    <link href="scripts/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" />
    <script src="scripts/fancybox/jquery.fancybox.js" type="text/javascript"></script>
    <script src="scripts/fancybox/jquery.fancybox-media.js" type="text/javascript"></script>
    <%--simplyscroll--%>
    <script src="scripts/simplyscroll/jquery.simplyscroll.js" type="text/javascript"></script>
    <link href="scripts/simplyscroll/jquery.simplyscroll.css" rel="stylesheet" type="text/css" />
    <%--Script Reference watermark--%>
    <script src="scripts/watermark/jquery.watermark.js" type="text/javascript"></script>
    <%--select box--%>
    <link href="scripts/selectbox/jquery.selectbox.css" rel="stylesheet" type="text/css" />
    <script src="scripts/selectbox/jquery.selectbox.js" type="text/javascript"></script>
    <%--message bar--%>
    <link href="scripts/messagebar/jquery.messagebar.multipleline.css" rel="stylesheet"
        type="text/css" />
    <script src="scripts/messagebar/jquery.messagebar.multipleline.js" type="text/javascript"></script>
</head>
<body class="signup_body">
    <form id="form1" runat="server">
    <div class="sign_up">
        <div class="signup_title">
            Schedule a Live Demo</div>
        <div class="request_demo_description">
            Thank you for your interest in a live demo of Assette. Please complete the information
            below and click "Submit". An Assette representative will contact you within 1 business
            day to schedule a time for the demo. The demo will be conducted via an online meeting.
            You will be able to view all capabilities of Assette right on your screen.
            <br />
            <br />
            <%--In the meantime, if you haven't already done so, click <a class="request_demo_video_link lnkblue"
                href="javascript:void('0');">here</a> to view our demo video.
            <br />
            <br />--%>
            <div class="small_italic">
                Please be assured that the information you provide will not be sold or given to
                any other party.</div>
        </div>
        <div class="field_row_long">
            <div class="field_long">
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" class="textArea"></asp:TextBox></div>
        </div>
        <div class="field_row_long">
            <div class="field_long">
                <asp:TextBox ID="txtHeard" runat="server" TextMode="MultiLine" class="textArea"></asp:TextBox></div>
        </div>
        <div class="field_row_long">
            <asp:Button ID="btnRegister" runat="server" Text="SUBMIT" OnClick="btnRegister_Click"
                CssClass="signUpBtn" OnClientClick="return UserRegistration();" /><div id="LoadingImage"
                    style="display: none;">
                    <img style="padding-top: 16px; padding-left: 10px;" src="images/Spinner.gif?v=1.0.0.13"
                        alt="" width="32" height="32" /></div>
        </div>
        <div class="requird_text">
            * Required</div>
        <div id="message_bar" style="border-radius: 4px; -moz-border-radius: 4px;">
        </div>
    </div>
    </form>
    <!-- Start of Async HubSpot Analytics Code -->
    <script type="text/javascript">
        (function (d, s, i, r) {
            if (d.getElementById(i)) { return; }
            var n = d.createElement(s), e = d.getElementsByTagName(s)[0];
            n.id = i; n.src = '//js.hubspot.com/analytics/' + (Math.ceil(new Date() / r) * r) + '/279299.js';
            e.parentNode.insertBefore(n, e);
        })(document, "script", "hs-analytics", 300000);
    </script>
    <!-- End of Async HubSpot Analytics Code -->
    <!-- google analytics -->
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-32165472-1']);
        _gaq.push(['_setDomainName', 'assette.com']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
    <!-- google analytics -->
</body>
</html>
