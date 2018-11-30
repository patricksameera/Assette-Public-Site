<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="case-studies.aspx.cs" Inherits="Assette.Web.PublicSite.admin.case_studies"
    MasterPageFile="AdminMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <a href="create-case-study.aspx">Create New</a>
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
                    Summary
                </td>
                <td>
                    Quoted Text
                </td>
                <td>
                    Case Study File
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
            <asp:ListView ID="lstvwCaseStudies" runat="server" ViewStateMode="Disabled">
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
                            <%# Eval("Summary")%>
                        </td>
                        <td>
                            <%# Eval("QuotedText")%>
                        </td>
                        <td>
                            <%# Eval("CaseStudyFileURL")%>
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
                            <a href="create-case-study.aspx?id=<%# Eval("Id")%>">Edit</a>
                        </td>
                        <td>
                            <a href="case-studies.aspx?id=<%# Eval("Id")%>">Delete</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </tbody>
    </table>
</asp:Content>
