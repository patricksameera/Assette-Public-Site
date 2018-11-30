<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-news-release.aspx.cs" Inherits="Assette.Web.PublicSite.admin.create_news_release"
    MasterPageFile="AdminMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
    <asp:TextBox ID="txtTitle"
        runat="server" Width="300px"></asp:TextBox><br />
    <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
    <asp:TextBox
        ID="txtDescription" runat="server" Height="87px" Width="400px" 
        TextMode="MultiLine"></asp:TextBox><br />
    <asp:Label ID="Label4" runat="server" Text="News Release URL"></asp:Label>
    <asp:TextBox ID="txtNewsReleaseUrl" runat="server" Width="300px"></asp:TextBox><br />
    <asp:Label ID="Label9" runat="server" Text="Date Published"></asp:Label><asp:Calendar
        ID="cldrPublished" runat="server"></asp:Calendar>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Active?"></asp:Label>
    <asp:CheckBox ID="chkIsActive" runat="server" /><br />
    <asp:Label ID="Label1" runat="server" Text="Secure?"></asp:Label>
    <asp:CheckBox ID="chkIsSecure" runat="server" /><br />
    <asp:Button ID="btnCreate" runat="server" Text="Submit" OnClick="btnCreate_Click" />
</asp:Content>
