<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clients.aspx.cs" Inherits="Assette.Web.PublicSite.admin.clients"
    MasterPageFile="AdminMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <a href="create-client.aspx">Create New</a>
    <table class="listview_table">
        <thead>
            <tr>
                <td>
                    Id
                </td>
                <td>
                    Client
                </td>
                <td>
                    AUM
                </td>
                <td>
                    Web URL
                </td>
                <td>
                    Logo URL
                </td>
                <td>
                    Rank
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
            <asp:ListView ID="lstvwClients" runat="server" ViewStateMode="Disabled">
                <LayoutTemplate>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%# Eval("Id")%>
                        </td>
                        <td>
                            <%# Eval("Name")%>
                        </td>
                        <td>
                            <%# Eval("AUM")%>
                        </td>
                        <td>
                            <%# Eval("WebURL")%>
                        </td>
                        <td>
                            <%# Eval("LogoURL")%>
                        </td>
                        <td>
                            <%# Eval("Rank")%>
                        </td>
                        <td>
                            <%# Eval("IsActive")%>
                        </td>
                        <td>
                            <a href="create-client.aspx?id=<%# Eval("Id")%>">Edit</a>
                        </td>
                        <td>
                            <a href="clients.aspx?id=<%# Eval("Id")%>">Delete</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </tbody>
    </table>
</asp:Content>
