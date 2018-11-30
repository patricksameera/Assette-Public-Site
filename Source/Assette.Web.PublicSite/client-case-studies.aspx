<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="client-case-studies.aspx.cs"
    Inherits="Assette.Web.PublicSite.client_case_studies" MasterPageFile="AssetteMaterPage.Master"
    Title="Success Stories | Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <%--Script Reference--%>
    <script src="scripts/slider.js" type="text/javascript"></script>
    <div class="other_top_client">
        <div class="other_top_left_client">
            <div id="slideshow">
                <div id="slidesContainer">
                    <asp:ListView ID="lstvwQuotes" runat="server" ViewStateMode="Disabled">
                        <LayoutTemplate>
                            <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                        </LayoutTemplate>
                        <ItemTemplate>
                            <div class="slide">
                                <div class="single_quote">
                                    <b>"<%# Eval("Testimonial")%>"</b><br />
                                    <br />
                                    <%# Eval("Author")%>
                                    <br />
                                    <span style="color: Gray;">
                                        <%# Eval("PositionOfAuthor")%></span>
                                    <br />
                                    <span style="color: Gray; font-size: 12px; font-style: italic;">
                                        <%# Eval("ClientName")%></span>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
        <div class="other_top_right">
            <img src="images/clients_banner.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                alt="" width="510" height="300" />
        </div>
    </div>
    <div class="press">
        <asp:ListView ID="lstvwCaseStudies" runat="server" ViewStateMode="Disabled">
            <LayoutTemplate>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
            </LayoutTemplate>
            <ItemTemplate>
                <div class="single_press_release">
                    <div class="testimonial_sec1">
                        <img src="clientlogos/<%# Eval("LogoURL")%>" alt="" />
                    </div>
                    <div class="testimonial_sec2">
                        "<%# Eval("QuotedText")%>"<br />
                        <br />
                        <div class="testimonial_sec3">
                            <b>
                                <%# Eval("Author")%></b>, <b>
                                    <%# Eval("PositionOfAuthor")%></b></div>
                    </div>
                    <span class="testimonial_sec4">CASE STUDY</span>
                    <br />
                    <div class="testimonial_sec5">
                        <%# Eval("Summary")%></div>
                    <div class="testimonial_sec6">
                        <a target="_blank" href="clientcasestudies/<%# Eval("CaseStudyFileURL")%>">
                            <img src="images/case_study_download.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                                alt="" width="37" height="33" style="float: left;" /><div class="download_link_casestudy">
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
