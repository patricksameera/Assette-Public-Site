<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="press-releases.aspx.cs"
    Inherits="Assette.Web.PublicSite.press_releases" MasterPageFile="AssetteMaterPage.Master"
    Title="News | Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <%--Script Reference--%>
    <script src="scripts/slider.js" type="text/javascript"></script>
    <div class="other_top_client">
        <div class="other_top_left_client">
            <div id="slideshow">
                <div id="slidesContainer">
                    <asp:ListView ID="lstvwPressReleaseQuotes" runat="server" ViewStateMode="Disabled">
                        <LayoutTemplate>
                            <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                        </LayoutTemplate>
                        <ItemTemplate>
                            <div class="slide">
                                <div class="single_quote">
                                    <b>"<%# Eval("Quote")%>"</b><br />
                                    <br />
                                    <%# Eval("Author")%>
                                    <br />
                                    <span style="color: Gray;">
                                        <%# Eval("PositionOfAuthor")%></span>
                                    <br />
                                    <span style="color: Gray; font-size: 12px; font-style: italic;">
                                        <%# Eval("Company")%></span>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
        <div class="other_top_right">
            <img src="images/news_banner.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                alt="" width="510" height="300" />
        </div>
    </div>
    <div class="press">
        <asp:ListView ID="lstvwPressReleases" runat="server" ViewStateMode="Disabled">
            <LayoutTemplate>
                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
            </LayoutTemplate>
            <ItemTemplate>
                <div class="single_press_release">
                    <div class="press_release_sec2">
                        <b>
                            <%# Eval("Title")%></b></div>
                    <br />
                    <div class="press_release_sec3">
                        <i>
                            <%# String.Format("{0:d MMM yyyy}", Eval("DatePublished"))%>
                        </i>
                    </div>
                    <br />
                    <div class="press_release_sec4">
                        <%# Eval("Description")%>
                    </div>
                    <br />
                    <div class="press_release_sec5">
                        <a target="_blank" href="pressreleases/<%# Eval("NewsReleaseFileURL")%>">
                            <img src="images/case_study_download.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                                alt="" width="37" height="33" style="float: left;" /><div class="download_link_pressrelease">
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
