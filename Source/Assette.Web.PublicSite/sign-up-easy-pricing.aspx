<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign-up-easy-pricing.aspx.cs"
    Inherits="Assette.Web.PublicSite.sign_up_easy_pricing" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <title></title>
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
    <script src="scripts/easy-pricing.js" type="text/javascript"></script>
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
            <div id="demo_product" style="float: left;" runat="server">
            </div>
        </div>
        <div class="view_price_description">
            Thank you for your interest in Assette. Please complete the information below and
            click "Submit" to see our pricing. Assette’s pricing has no hidden fees. You will
            see everything you need on one page. We make buying Assette hassle-free.
            <br />
            <br />
            <div class="small_italic" style="float: left;">
                Please be assured that the information you provide will not be sold or given to
                any other party.</div>
        </div>
        <div class="field_row">
            <div class="field">
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></div>
        </div>
        <div class="field_row">
            <div class="field">
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></div>
        </div>
        <div class="field_row">
            <div class="field">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></div>
        </div>
        <div class="field_row">
            <div class="field">
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></div>
        </div>
        <div class="field_row">
            <div class="field">
                <asp:DropDownList ID="drpJobFunction" runat="server" CssClass="selectInput">
                    <asp:ListItem Value="0" Selected="True">
                    SELECT JOB FUNCTION *
                    </asp:ListItem>
                    <asp:ListItem Value="Executive Management">
                    Executive Management
                    </asp:ListItem>
                    <asp:ListItem Value="Marketing, Sales, Client Service">
                    Marketing, Sales, Client Service
                    </asp:ListItem>
                    <asp:ListItem Value="Portfolio Management">
                    Portfolio Management
                    </asp:ListItem>
                    <asp:ListItem Value="Operations">
                    Operations
                    </asp:ListItem>
                    <asp:ListItem Value="Compliance">
                    Compliance
                    </asp:ListItem>
                    <asp:ListItem Value="IT">
                    IT
                    </asp:ListItem>
                    <asp:ListItem Value="Other">
                   Other
                    </asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="field_row">
            <div class="field">
                <asp:TextBox ID="txtFirmName" runat="server"></asp:TextBox></div>
        </div>
        <div class="field_row">
            <div class="field">
                <asp:DropDownList ID="drpFirmAum" runat="server" CssClass="selectInput">
                    <asp:ListItem Value="0" Selected="True">
                    SELECT FIRM AUM *
                    </asp:ListItem>
                    <asp:ListItem Value="Less than $500M">
                    Less than $500M
                    </asp:ListItem>
                    <asp:ListItem Value="$500M - $1B">
                    $500M - $1B
                    </asp:ListItem>
                    <asp:ListItem Value="$1B - $5B">
                    $1B - $5B
                    </asp:ListItem>
                    <asp:ListItem Value="$5B - $10B">
                    $5B - $10B
                    </asp:ListItem>
                    <asp:ListItem Value="$10B - $15B">
                    $10B - $15B
                    </asp:ListItem>
                    <asp:ListItem Value="More than $15B">
                    More than $15B
                    </asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="field_row">
            <div class="field">
                <asp:DropDownList ID="drpFirmType" runat="server" CssClass="selectInput">
                    <asp:ListItem Value="0" Selected="True">
                    SELECT FIRM TYPE *
                    </asp:ListItem>
                    <asp:ListItem Value="Institutional Asset Manager">
                    Institutional Asset Manager
                    </asp:ListItem>
                    <asp:ListItem Value="Manager of Managers/OCIO">
                    Manager of Managers/OCIO
                    </asp:ListItem>
                    <asp:ListItem Value="Wealth Manager/Advisor">
                    Wealth Manager/Advisor
                    </asp:ListItem>
                    <asp:ListItem Value="Institutional Consultant">
                   Institutional Consultant
                    </asp:ListItem>
                    <asp:ListItem Value="Other">
                    Other
                    </asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <%--<div class="field_row_long">
            <div class="field_short">
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" class="textArea"></asp:TextBox></div>
        </div>--%>
        <div class="field_row_long">
            <asp:Button ID="btnRegister" runat="server" Text="SUBMIT" OnClick="btnRegister_Click"
                CssClass="signUpBtn" OnClientClick="return UserRegistration();" /><div id="LoadingImage"
                    style="display: none;">
                    <img style="padding-top: 16px; padding-left: 10px;" src="images/Spinner.gif?v=1.0.0.13"
                        alt="" width="32" height="32" /></div>
        </div>
        <div class="field_row_long" style="height: 20px;">
            &nbsp;
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
