<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portfolio-accounting-system-reporting.aspx.cs"
    Inherits="Assette.Web.PublicSite.portfolio_accounting_system_reporting" MasterPageFile="AssetteMaterPage.Master"
    Title="Assette Easy Editions Software for Portfolio Accounting Systems" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="product_details_long">
        <div class="product_details_top">
        </div>
        <div class="product">
            <div class="product_details_title_double">
                <%-- <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="28" height="27" />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Easy
                Editions -
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette EasyPresentations,
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette EasyReports,
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette EasyPortal</div>
            <div class="product_details_left_center">
                <br />
                <br />
                <div class="product_details_description">
                    Just the right features for small firms to improve client service with customized
                    client presentations, quarterly reports and a secure portal.
                </div>
                <div class="product_details_bulletpoints">
                    <ul>
                        <li>Free up time to serve clients by slashing 85% off manual work and resulting errors.</li>
                        <li>Publish quarterly commentary, firm updates, bios and other information to one place
                            and have all client communications reflect the latest information.</li>
                        <li>Enhance your corporate brand and professionalism while providing 24X7 access to
                            individual account information that is highly customized and secure.</li>
                    </ul>
                </div>
            </div>
            <%--<div class="product_details_video">
                <a class="product_video_registration" videokey="sFfgPcTKG2E" href="javascript:void(0);"
                    product="Easy Editions" time="2:42">
                    <img src="images/video_image_large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="415" height="253" /></a>
                <div class="product_note5">
                    Product Demo (01:00)</div>
            </div>--%>
            <div class="product_details_video" style="display: none;">
                <img src="images/video_image_large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="415" height="253" />
            </div>
            <div class="product_details_buttons">
                <%-- <a class="product_video_registration" videokey="sFfgPcTKG2E" href="javascript:void(0);"
                    product="Easy Editions" time="2:42">
                    <div class="product_details_btn">
                        WATCH DEMO</div>
                </a>--%><a target="_blank" href="datasheets/Assette-EasyEditions-Datasheet.pdf">
                    <div class="product_details_btn">
                        DATA SHEET</div>
                </a><a class="pricing_dialog" data-fancybox-type="iframe" href="portfolio-management-software.aspx">
                    <div class="product_details_btn">
                        COMPARE WITH STANDARD</div>
                </a><a class="pricing_dialog_easy_registration" href="javascript:void(0);" product_title="Pricing – Easy Editions"
                    product="Easy Editions">
                    <div class="product_details_btn pricing_button">
                        PRICING<div class="pricing_lock" id="pricing_padlock" runat="server">
                        </div>
                    </div>
                </a><a href="javascript:void('0');">
                    <div class="product_details_btn contact_sales_sign_up" videokey="sFfgPcTKG2E" product="Easy Editions">
                        CONTACT ASSETTE</div>
                </a>
            </div>
        </div>
    </div>
    <div class="learn_more_action">
        Let us show you how small firms can take client communications to the next level.<a
            href="javascript:void('0');">
            <div class="learn_more_action_btn request_live_demo" videokey="sFfgPcTKG2E" product="Easy Editions">
                SCHEDULE A LIVE DEMO</div>
        </a>
    </div>
    <div style="height: 30px; width: 1020px;">
    </div>
    <div class="product_details_section">
        <div class="product_details_section_top">
        </div>
        <div class="product">
            <div class="product_details_section_note1_single">
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette EasyPresentations
            </div>
            <div class="product_details_section_note2">
                With EasyPresentations, creating highly customized client presentations is hassle-free.
                Use Microsoft PowerPoint<sup>&reg;</sup> to define templates by simply placing charts,
                tables, or other exhibits on slides. Visit the <a class="lnkblue" href="../gallery">
                    Gallery</a> to view the institutional-quality report outlines we offer.
                <br />
                <br />
                For static content like firm overview, bios, market insight, etc. simply indicate
                template placement. Setting up templates is a one-time effort. Assette automatically
                populates presentations with data you send from internal systems and inserts the
                latest insights and perspectives, adding value to your data.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/easy_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/easy_thumb_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/easy_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="product_details_section">
        <div class="product_details_section_top">
        </div>
        <div class="product">
            <div class="product_details_section_note1_single">
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette EasyReports
            </div>
            <div class="product_details_section_note2">
                If your client reports don't look attractive—with plain tables, too few charts,
                and inconsistent fonts and colors—you're undercutting the image you work so hard
                to communicate. Select from 50-plus professionally designed charts and tables, covering
                everything from asset allocation to relationship reporting. Visit the <a class="lnkblue"
                    href="../gallery">Gallery</a> to view all the charts and tables.
                <br />
                <br />
                Enrich your reports by providing more than just the minimum—easily add top holdings
                and commentary. Reporting at the relationship level and individual account level
                in the same reporting packet is simple.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/easy_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/easy_thumb_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/easy_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="product_details_section product_details_section_border_bottom">
        <div class="product_details_section_top">
        </div>
        <div class="product">
            <div class="product_details_section_note1_single">
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette EasyPortal
            </div>
            <div class="product_details_section_note2">
                Clients today expect anytime-anywhere access to information. Mailing reports is
                not sufficient. Sending clients to custodial sites? You're undercutting the relationship
                you work so hard to foster.
                <br />
                <br />
                Our software lets you communicate timely information and rich insights through your
                own client portal. Your portal is branded to reflect your corporate image. Assette
                makes you look good while increasing client satisfaction.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/easy_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/easy_thumb_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/easy_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="product_details_section product_details_section_border_bottom">
        <div class="product_details_section_top">
        </div>
        <div class="product">
            <div class="product_details_section_note1">
                Seamlessly integrate with your systems
            </div>
            <div class="product_details_section_note2">
                Interfaces built from the ground up for Axys<sup>&reg;</sup>, Advent OnDemand<sup>&reg;</sup>
                and Schwab PortfolioCenter<sup>&reg;</sup> let you effortlessly send all of your
                data to Assette – you send data once and the latest information is available to
                generate presentations, client reports and display on your client portal. You don't
                need help from IT professionals.
                <br />
                <br />
                All interfaces are pre-built. You download them from the web, and you are ready
                to send data in minutes.
                <br />
                <br />
                Each time you send data, Assette runs over 250 <a href="data-validations.aspx" class="lnkblue">
                    checks</a> to ensure that your clients see only accurate information.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/easy_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/easy_thumb_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/easy_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
