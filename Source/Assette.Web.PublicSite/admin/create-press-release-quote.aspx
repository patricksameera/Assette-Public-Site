<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-press-release-quote.aspx.cs"
    Inherits="Assette.Web.PublicSite.admin.create_press_release_quote" MasterPageFile="AdminMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <asp:Label ID="Label2" runat="server" Text="Author"></asp:Label>
    <asp:TextBox ID="txtAuthor" runat="server" Width="400px"></asp:TextBox><br />
    <asp:Label ID="Label3" runat="server" Text="Position of Author"></asp:Label>
    <asp:TextBox ID="txtPositionOfAuthor" runat="server" Width="400px"></asp:TextBox><br />
    <asp:Label ID="Label1" runat="server" Text="Company"></asp:Label>
    <asp:TextBox ID="txtCompany" runat="server" Width="400px"></asp:TextBox><br />
    <asp:Label ID="Label4" runat="server" Text="Quote"></asp:Label>
    <asp:TextBox ID="txtQuote" runat="server" TextMode="MultiLine" Height="80px" Width="400px"></asp:TextBox><br />
    <asp:Label ID="Label6" runat="server" Text="Rank"></asp:Label><asp:TextBox ID="txtRank"
        runat="server"></asp:TextBox><br />
    <asp:Label ID="Label9" runat="server" Text="Date Published"></asp:Label><asp:Calendar
        ID="cldrPublished" runat="server"></asp:Calendar>
    <br />
    <asp:Label ID="Label7" runat="server" Text="Active?"></asp:Label>
    <asp:CheckBox ID="chkIsActive" runat="server" /><br />
    <asp:Button ID="btnCreate" runat="server" Text="Submit" OnClick="btnCreate_Click" />
</asp:Content>
