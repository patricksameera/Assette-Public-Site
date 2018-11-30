<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="press-releases.aspx.cs"
    Inherits="Assette.Web.PublicSite.admin.press_releases" MasterPageFile="AdminMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <a href="create-press-release.aspx">Create New</a>
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
                    Edit
                </td>
                <td>
                    Delete
                </td>
            </tr>
        </thead>
        <tbody>
            <asp:ListView ID="lstvwPressReleases" runat="server" ViewStateMode="Disabled">
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
                            <a href="create-press-release.aspx?id=<%# Eval("Id")%>">Edit</a>
                        </td>
                        <td>
                            <a href="press-releases.aspx?id=<%# Eval("Id")%>">Delete</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </tbody>
    </table>
</asp:Content>
