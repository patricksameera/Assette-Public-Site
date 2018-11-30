<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="press-release-quotes.aspx.cs"
    Inherits="Assette.Web.PublicSite.admin.press_release_quotes" MasterPageFile="AdminMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <a href="create-press-release-quote.aspx">Create New</a>
    <table class="listview_table">
        <thead>
            <tr>
                <td>
                    Id
                </td>
                <td>
                    Author
                </td>
                <td>
                    Position of Author
                </td>
                <td>
                    Company
                </td>
                <td>
                    Quote
                </td>
                <td>
                    Rank
                </td>
                <td>
                    Active?
                </td>
                <td>
                    Date Published
                </td>
                <td>
                    Edit
                </td>
                <td>
                    Delete
                </td>
            </tr>
        </thead>
        <tbody>
            <asp:ListView ID="lstvwPressReleaseQuotes" runat="server" ViewStateMode="Disabled">
                <LayoutTemplate>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%# Eval("Id")%>
                        </td>
                        <td>
                            <%# Eval("Author")%>
                        </td>
                        <td>
                            <%# Eval("PositionOfAuthor")%>
                        </td>
                        <td>
                            <%# Eval("Company")%>
                        </td>
                        <td>
                            <%# Eval("Quote")%>
                        </td>
                        <td>
                            <%# Eval("Rank")%>
                        </td>
                        <td>
                            <%# Eval("IsActive")%>
                        </td>
                        <td>
                            <%# String.Format("{0:d MMM yyyy}", Eval("DatePublished"))%>
                        </td>
                        <td>
                            <a href="create-press-release-quote.aspx?id=<%# Eval("Id")%>">Edit</a>
                        </td>
                        <td>
                            <a href="press-release-quotes.aspx?id=<%# Eval("Id")%>">Delete</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </tbody>
    </table>
</asp:Content>
