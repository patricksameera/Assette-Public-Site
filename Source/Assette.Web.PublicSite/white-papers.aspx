<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="white-papers.aspx.cs" Inherits="Assette.Web.PublicSite.white_papers"
    MasterPageFile="AssetteMaterPage.Master" Title="White Papers | Assette" %>

<%@ Register Src="~/usercontrol/client-list.ascx" TagName="CalendarUserControl" TagPrefix="uc1" %>
<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            Read the latest thinking on effective ways to communicate the merits of active management
            to clients and consultants. See results of our research studies and experiences.
        </div>
        <div class="other_top_right">
            <img src="images/white_papers_banner.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                alt="" width="510" height="300" />
        </div>
    </div>
    <div class="news">
        <asp:ListView ID="lstvwNewsReleases" runat="server" ViewStateMode="Disabled">
            <LayoutTemplate>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
            </LayoutTemplate>
            <ItemTemplate>
                <div class="single_news">
                    <div class="news_sec1">
                        <b>
                            <%# Eval("Title")%></b></div>
                    <br />
                    <br />
                    <div class="news_sec3">
                        <%# Eval("Description")%>
                    </div>
                    <br />
                    <div class="news_sec4">
                        <a path="newsreleases/<%# Eval("NewsReleaseFileURL")%>" href="javascript:void('0');"
                            class="white_paper_pdf_download" secure="<%# Eval("IsSecure")%>" posttitle="<%# Eval("Title")%>">
                            <% if (Session["Email"] == null)
                               { %>
                            <img src="<%#  Eval("IsSecure").ToString() == "True" ? "images/case_study_locked_download.png?v=1.0.0.24" : "images/case_study_download.png?v=1.0.0.24" %>"
                                alt="" width="37" height="33" style="float: left;" />
                            <% }
                               else
                               { %>
                            <img src="images/case_study_download.png?v=1.0.0.24" alt="" width="37" height="33"
                                style="float: left;" />
                            <% }  %>
                            <div class="download_link_whitepaper">
                                Read More ></div>
                        </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
