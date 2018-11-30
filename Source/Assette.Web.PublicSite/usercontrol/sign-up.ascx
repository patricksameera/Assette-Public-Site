<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="sign-up.ascx.cs" Inherits="Assette.Web.PublicSite.usercontrol.sign_up" %>
<div id="signin" class="other_signin">
    <div class="title">
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></div>
    <div class="field">
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></div>
    <div class="title">
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></div>
    <div class="field">
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></div>
    <div class="title">
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label></div>
    <div class="field">
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></div>
    <div class="title">
        <asp:Label ID="Label4" runat="server" Text="Company"></asp:Label></div>
    <div class="field">
        <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox></div>
    <div class="title">
        <asp:Label ID="Label5" runat="server" Text="Job Title"></asp:Label></div>
    <div class="field">
        <asp:TextBox ID="txtJobTitle" runat="server"></asp:TextBox></div>
    <div class="title">
        <asp:Label ID="Label6" runat="server" Text="AUM"></asp:Label></div>
    <div class="field">
        <asp:TextBox ID="txtAum" runat="server"></asp:TextBox></div>
    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
</div>
