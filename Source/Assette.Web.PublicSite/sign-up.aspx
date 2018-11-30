<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign-up.aspx.cs" Inherits="Assette.Web.PublicSite.sign_up" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <title>ASSETTE - Client Communications Software for Investment Management Firms</title>
    <%--<link rel="SHORTCUT ICON" href="http://gallery.dev.sl.bta.cc/assette.ico" />--%>
    <link rel="SHORTCUT ICON" href="assette.ico" />
     <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,600italic,400italic,700,700italic,300,300italic" rel='stylesheet' type='text/css'>
    <%--StyleSheet Reference--%>
    <link href="styles/assette.css?v=1.0.0.24" rel="stylesheet" />
    <link href="styles/slider.css" rel="stylesheet" />
    <link href="styles/jquery-ui.css" rel="stylesheet" type="text/css" />
    <%--Script Reference--%>
    <script src="scripts/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="scripts/jquery-ui.js" type="text/javascript"></script>
    <script src="scripts/assette.js?v=1.0.0.24" type="text/javascript"></script>
    <%--fancy box--%>
    <link href="scripts/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" />
    <script src="scripts/fancybox/jquery.fancybox.js" type="text/javascript"></script>
    <script src="scripts/fancybox/jquery.fancybox-media.js" type="text/javascript"></script>
    <%--simplyscroll--%>
    <script src="scripts/simplyscroll/jquery.simplyscroll.js" type="text/javascript"></script>
    <link href="scripts/simplyscroll/jquery.simplyscroll.css" rel="stylesheet" type="text/css" />
</head>
<body class="signup_body">
    <form id="form1" runat="server">
    <div class="sign_up">
        <div class="signup_title">
            Just fill bellow fields. Simple as that ...</div>
        <div class="field_row">
            <div class="title">
                <asp:Label ID="Label1" runat="server" Text="First Name *"></asp:Label></div>
            <div class="field">
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></div>
        </div>
        <div class="field_row">
            <div class="title">
                <asp:Label ID="Label2" runat="server" Text="Last Name *"></asp:Label></div>
            <div class="field">
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></div>
        </div>
        <div class="field_row">
            <div class="title">
                <asp:Label ID="Label3" runat="server" Text="Email *"></asp:Label></div>
            <div class="field">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></div>
        </div>
        <div class="field_row">
            <div class="title">
                <asp:Label ID="Label8" runat="server" Text="Title *"></asp:Label></div>
            <div class="field">
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox></div>
        </div>
        <div class="field_row">
            <div class="title">
                <asp:Label ID="Label5" runat="server" Text="SELECT JOB FUNCTION *"></asp:Label></div>
            <div class="field">
                <asp:DropDownList ID="drpJobFunction" runat="server" CssClass="selectInput">
                    <asp:ListItem Value="0" Selected="True">
                    Please Select ...
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
                <div style="display: none">
                    <asp:TextBox ID="txtJobTitle" runat="server"></asp:TextBox></div>
            </div>
        </div>
        <div class="field_row">
            <div class="title">
                <asp:Label ID="Label4" runat="server" Text="Firm Name *"></asp:Label></div>
            <div class="field">
                <asp:TextBox ID="txtFirmName" runat="server"></asp:TextBox></div>
        </div>
        <div class="field_row">
            <div class="title">
                <asp:Label ID="Label6" runat="server" Text="SELECT FIRM AUM *"></asp:Label></div>
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
                <div style="display: none">
                    <asp:TextBox ID="txtAum" runat="server"></asp:TextBox></div>
            </div>
        </div>
        <div class="field_row">
            <div class="title">
                <asp:Label ID="Label7" runat="server" Text="SELECT FIRM TYPE *"></asp:Label></div>
            <div class="field">
                <asp:DropDownList ID="drpFirmType" runat="server" CssClass="selectInput">
                    <asp:ListItem Value="0" Selected="True">
                    Please Select ...
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
                <div style="display: none">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
            </div>
        </div>
        <asp:Button ID="btnRegister" runat="server" Text="SUBMIT" OnClick="btnRegister_Click"
            CssClass="signUpBtn" />
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
