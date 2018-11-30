<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testimonials.aspx.cs" Inherits="Assette.Web.PublicSite.admin.testimonials"
    MasterPageFile="AdminMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <a href="create-testimonial.aspx">Create New</a>
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
                    Author
                </td>
                <td>
                    Position of Author
                </td>
                <td>
                    Testimonial
                </td>
                <td>
                    Rank
                </td>
                <td>
                    Date Published
                </td>
                <td>
                    Active?
                </td>
                <td>
                    Show On Home Page?
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
            <asp:ListView ID="lstvwTestimonials" runat="server" ViewStateMode="Disabled">
                <LayoutTemplate>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                </LayoutTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%# Eval("Id")%>
                        </td>
                        <td>
                            <%# Eval("ClientName")%>
                        </td>
                        <td>
                            <%# Eval("Author")%>
                        </td>
                        <td>
                            <%# Eval("PositionOfAuthor")%>
                        </td>
                        <td>
                            <%# Eval("Testimonial")%>
                        </td>
                        <td>
                            <%# Eval("Rank")%>
                        </td>
                        <td>
                            <%# Eval("DatePublished")%>
                        </td>
                        <td>
                            <%# Eval("IsActive")%>
                        </td>
                        <td>
                            <%# Eval("IsShownOnHomePage")%>
                        </td>
                        <td>
                            <a href="create-testimonial.aspx?id=<%# Eval("Id")%>">Edit</a>
                        </td>
                        <td>
                            <a href="testimonials.aspx?id=<%# Eval("Id")%>">Delete</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </tbody>
    </table>
</asp:Content>
