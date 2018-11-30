<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Assette.Web.PublicSite.admin.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label><asp:TextBox ID="txtUserName"
            runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><asp:TextBox ID="txtPassword"
            TextMode="Password" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br />
        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
