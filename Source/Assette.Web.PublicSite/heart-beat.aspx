<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="heart-beat.aspx.cs" Inherits="Assette.Web.PublicSite.heartbeat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,600italic,400italic,700,700italic,300,300italic" rel='stylesheet' type='text/css'>
    <link href="styles/assette.css" rel="stylesheet" type="text/css" />--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblResponse" runat="server" Text=""></asp:Label>
    </div>
    <%--<div>
        <img src="images/blog_banner.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" /></div>
    <div style="font-size: 14px; color: #6f6f6f; font-family: Open Sans !important; top: 90px;
        left: 400px; border: 1px solid #000000; width: 300px; position: absolute; font-weight: bold;">
        A COUPLE LINES OF TEXT
        <br />
        THAT INTRODUCE THE BLOG
    </div>--%>
    </form>
</body>
</html>
