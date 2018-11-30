<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news-releases.aspx.cs"
    Inherits="Assette.Web.PublicSite.admin.news_releases" MasterPageFile="AdminMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <a href="create-news-release.aspx">Create New</a>
    <table class="listview_table">
        <thead>
            <tr>
                <td>
                    Id
                </td>
                <td>
                    Title
                </td>
                <td>
                    Description
                </td>
                <td>
                    File URL
                </td>
                <td>
                    Date Published
                </td>
                <td>
                    Active?
                </td>
                 <td>
                    Secure?
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
            <asp:ListView ID="lstvwNewsReleases" runat="server" ViewStateMode="Disabled">
                <LayoutTemplate>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%# Eval("Id")%>
                        </td>
                        <td>
                            <%# Eval("Title")%>
                        </td>
                        <td>
                            <%# Eval("Description")%>
                        </td>
                        <td>
                            <%# Eval("NewsReleaseFileURL")%>
                        </td>
                        <td>
                            <%# String.Format("{0:d MMM yyyy}", Eval("DatePublished"))%>
                        </td>
                        <td>
                            <%# Eval("IsActive")%>
                        </td>
                        <td>
                            <%# Eval("IsSecure")%>
                        </td>
                        <td>
                            <a href="create-news-release.aspx?id=<%# Eval("Id")%>">Edit</a>
                        </td>
                        <td>
                            <a href="news-releases.aspx?id=<%# Eval("Id")%>">Delete</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </tbody>
    </table>
</asp:Content>
