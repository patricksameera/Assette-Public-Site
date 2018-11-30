<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-client.aspx.cs"
    Inherits="Assette.Web.PublicSite.admin.create_client" MasterPageFile="AdminMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <asp:Label ID="Label1" runat="server" Text="Client Name"></asp:Label>
    <asp:TextBox
        ID="txtClient" runat="server" Width="300px"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="AUM"></asp:Label><asp:TextBox ID="txtAum"
        runat="server"></asp:TextBox><br />
    <asp:Label ID="Label3" runat="server" Text="Web URL"></asp:Label>
    <asp:TextBox ID="txtWebUrl"
        runat="server" Width="300px"></asp:TextBox><br />
    <asp:Label ID="Label4" runat="server" Text="Logo"></asp:Label>
    <asp:TextBox ID="txtLogo"
        runat="server" Width="300px"></asp:TextBox><br />
    <asp:Label ID="Label5" runat="server" Text="Rank"></asp:Label><asp:TextBox ID="txtRank"
        runat="server"></asp:TextBox><br />
    <asp:Label ID="Label6" runat="server" Text="Active?"></asp:Label>
    <asp:CheckBox ID="chkIsActive" runat="server" /><br />
    <asp:Button ID="btnCreate" runat="server" Text="Submit" 
        onclick="btnCreate_Click" />
</asp:Content>
