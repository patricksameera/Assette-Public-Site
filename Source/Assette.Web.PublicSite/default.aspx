<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assette.Web.PublicSite._default"
    MasterPageFile="AssetteMaterPage.Master" Title="Assette | Client Communications & Reporting Software for Investment Management Firms" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="home_banner">
        <img src="images/client-reporting-software-assette.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
            alt="" width="1020" height="310" />
    </div>
    <div style="display: none;">
        <div class="client_logos">
            <ul class="horizontal_style">
                <asp:ListView ID="lstvwClients" runat="server" ViewStateMode="Disabled">
                    <LayoutTemplate>
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                    </LayoutTemplate>
                    <ItemTemplate>
                        <li><a class="lnkblue" title="<%# Eval("Name")%>" target="_blank" href="<%# Eval("WebURL")%>">
                            <img src="clientlogos/<%# Eval("LogoURL")%>" alt="" /></a></li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
        </div>
    </div>
    <div style="display: inline;">
        <div class="client_logos">
            <ul class="horizontal_style" id="logo_scroller">
                <asp:ListView ID="lstvwClientsScroll" runat="server" ViewStateMode="Disabled">
                    <LayoutTemplate>
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                    </LayoutTemplate>
                    <ItemTemplate>
                        <div style="margin-left: 25px; border: 0px solid #000000;">
                        </div>
                        <li><a class="lnkblue" title="<%# Eval("Name")%>" target="_blank" href="<%# Eval("WebURL")%>">
                            <img src="clientlogos/<%# Eval("LogoURL")%>" alt="" /></a></li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
        </div>
    </div>
    <div class="content_top">
        <div class="top_left" title="Click to Enlarge">
            <a class="fancybox" href="images/assette-client-reporting-software-large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                <img class="default_zoom" src="images/assette-client-reporting-software.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="Assette Client Reporting Software" width="313" height="302" /></a>
        </div>
        <%--<div class="top_left">
            <img class="default_zoom" src="images/assette-client-reporting-software.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                alt="Assette Client Reporting Software" width="313" height="302" />
        </div>--%>
        <a class="fancybox" href="images/assette-client-reporting-software-large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
            <div class="zoom_icon" title="Click to Enlarge">
                <img src="images/zoom_icon.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="30" height="30" />
            </div>
        </a>
        <div class="top_center">
            <asp:ListView ID="lstvwTestiminial" runat="server" ViewStateMode="Disabled">
                <LayoutTemplate>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                </LayoutTemplate>
                <ItemTemplate>
                    <div class="note7">
                        “<%# Eval("Testimonial")%>”
                    </div>
                    <div class="note8">
                        <%# Eval("Author")%><br />
                        <%# Eval("PositionOfAuthor")%><br />
                        <span style="color: white; font-size: 11px; font-style: italic;">
                            <%# Eval("ClientName")%></span></div>
                </ItemTemplate>
            </asp:ListView>
        </div>
        <div class="top_right">
            <div class="note1">
                With Assette, institutional investment managers easily communicate insights and
                investment stories through highly customized presentations, reports and a client
                portal.</div>
            <div class="note2">
                <ul class="home_bulletpoints">
                    <li>Win clients and retain assets by sharing insights behind your investment results.</li>
                    <li>Free up time to actually serve clients by reducing report preparation time by 85%.</li>
                    <li>Dramatically reduce errors by eliminating manual data rekeying and manipulation.</li></ul>
            </div>
            <div class="note3">
                Assette is quick to onboard, simple to use and backed by the best client service
                in the industry.</div>
        </div>
    </div>
    <div class="content_bottom">
        <div class="bottom_left">
            <div class="note6">
                WATCH OUR VIDEO</div>
            <div class="home_video">
                <a class="fancybox-media" href="http://www.youtube.com/embed/sFfgPcTKG2E">
                    <img src="images/overview_thumbnail.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="border: 0px solid #cccccc;" alt="" width="300" height="200" />
                </a>
                <div class="product_note5">
                    Assette Overview (2:42)</div>
            </div>
        </div>
        <div class="bottom_center">
            <div class="note4">
                READ OUR BLOG</div>
            <div>
                <asp:ListView ID="lstvwBlogEntry" runat="server" ViewStateMode="Disabled">
                    <LayoutTemplate>
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                    </LayoutTemplate>
                    <ItemTemplate>
                        <div class="blog_title">
                            <%# Eval("BlogTitle")%>
                        </div>
                        <div class="blog_description">
                            <%# Eval("BlogDescription")%><br />
                            <br />
                            <div style="line-height: 15px;">
                                <img src="images/arrow_bullet_point.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                                    alt="" width="9" height="15" style="vertical-align: middle;" />&nbsp;&nbsp;<a class="lnkblue"
                                        target="_blank" href="<%# Eval("BlogUrl")%>">Read More</a></div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
        <div class="bottom_right">
            <div class="note6">
                VISIT OUR GALLERY</div>
            <div class="home_video">
                <a href="../gallery" class="gallery_thumbnail">
                    <%--<img class="thumbnail_hover" src="images/client-reporting-software-gallery.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="300"
                        height="200" />--%>
                    <%--<img  src="images/client-reporting-software-gallery.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" width="300" height="200" />--%>
                </a>
            </div>
        </div>
    </div>
    <div class="learn_more_action_overflow">
        <div class="learn_more_action_text">
            Learn more about our products and easily communicate insights and investment stories.
            Your satisfaction guaranteed with the Assette Promise, our 60-day unconditional
            <b>money back guarantee</b>.
        </div>
        <div class="learn_more_action_button">
            <a href="investment-reporting-software.aspx">
                <div class="learn_more_action_btn">
                    LEARN MORE +</div>
            </a>
        </div>
    </div>
    <div style="height: 30px;" title="<%= ConfigurationSettings.AppSettings["ClientCode"] %>">
    </div>
</asp:Content>
