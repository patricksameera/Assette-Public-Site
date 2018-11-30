<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portfolio-reporting-software.aspx.cs"
    Inherits="Assette.Web.PublicSite.portfolio_reporting_software" MasterPageFile="AssetteMaterPage.Master"
    Title="Portfolio Reporting Software | Assette for Client Reports" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="product_details">
        <div class="product_details_top">
        </div>
        <div class="product">
            <div class="product_details_title">
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette Reports</div>
            <div class="product_details_description">
                Quarterly reporting is hassle-free and faster with easy integration of all your
                portfolio data and insights.
            </div>
            <div class="product_details_bulletpoints">
                <ul>
                    <li>Your clients receive attractive reports faster and you reduce time spent on quarterly
                        reporting by 85% or more.</li>
                    <li>Create a single template that includes your perspectives with charts and graphs
                        showing performance, holdings and other portfolio data; even proxy voting details
                        can be included.</li>
                    <li>Edit reports with PowerPoint; a familiar tool that makes customizing reports for
                        different clients simple.</li>
                </ul>
            </div>
            <%-- <div class="product_details_video">
                <a class="product_video_registration" videokey="sFfgPcTKG2E" href="javascript:void(0);"
                    product="Assette Reports" time="2:42">
                    <img src="images/video_image_large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="415" height="253" /></a>
                <div class="product_note5">
                    Product Demo (01:00)</div>
            </div>--%>
            <div class="product_details_video" style="display: none;">
                <img src="images/video_image_large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="415" height="253" />
            </div>
            <div class="product_details_buttons">
                <%--<a class="product_video_registration" videokey="sFfgPcTKG2E" href="javascript:void(0);"
                    product="Assette Reports" time="2:42">
                    <div class="product_details_btn">
                        WATCH DEMO</div>
                </a>--%><a target="_blank" href="datasheets/Assette-Reports-Datasheet.pdf">
                    <div class="product_details_btn">
                        DATA SHEET</div>
                </a><a class="pricing_dialog_standard_registration" href="javascript:void(0);" product_title="Pricing – Standard Editions"
                    product="Assette Reports">
                    <div class="product_details_btn pricing_button">
                        PRICING<div class="pricing_lock" id="pricing_padlock" runat="server">
                        </div>
                    </div>
                </a><a href="javascript:void('0');">
                    <div class="product_details_btn contact_sales_sign_up" videokey="sFfgPcTKG2E" product="Assette Reports">
                        CONTACT ASSETTE</div>
                </a>
            </div>
        </div>
    </div>
    <div class="learn_more_action">
        Let us show you how easy it is to create client reports with more than just charts
        and graphs.<a href="javascript:void('0');">
            <div class="learn_more_action_btn request_live_demo" videokey="sFfgPcTKG2E" product="Assette Reports">
                SCHEDULE A LIVE DEMO</div>
        </a>
    </div>
    <div style="height: 30px; width: 1020px;">
    </div>
    <div class="product_details_section">
        <div class="product_details_section_top">
        </div>
        <div class="product">
            <div class="product_details_section_note1">
                Provide rich content while reducing work with end-to-end automation
            </div>
            <div class="product_details_section_note2">
                At quarter-end, update content, automatically send data and you are ready to generate
                reports for all your clients with just a few clicks.
                <br />
                <br />
                Go beyond charts and graphs and include your perspectives on the market, rationale
                for overweighting a particular sector and reasons for the largest transactions and
                even include your proxy voting records.
                <br />
                <br />
                Email reports directly from Assette or publish to a secure client portal. Still
                mailing paper copies of reports to clients? No problem. Assette creates mail-ready
                packets so you simply print, stuff, and mail.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/report_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/report_thumb_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/report_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="product_details_section">
        <div class="product_details_section_top">
        </div>
        <div class="product">
            <div class="product_details_section_note1">
                Customize easily, using our report writer based on Microsoft PowerPoint<sup>&reg;</sup>
            </div>
            <div class="product_details_section_note2">
                Assette empowers client service staff, sparing them the need to contact programmers
                to prepare customized reports for clients.
                <br />
                <br />
                Now, client service staff—the people who know clients best—can customize reports
                using the tool they already know, Microsoft PowerPoint<sup>&reg;</sup>.<br />
                <br />
                It's easy to customize specific exhibits for different clients or to use a custom
                template for each client. The choice is yours. Setting up templates is a one-time
                effort.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/report_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/report_thumb_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/report_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
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
                Enhance your client reports and your image—pick from an institutional-quality library
                of reports
            </div>
            <div class="product_details_section_note2">
                Improve your reports by going beyond the basics and present your data using professionally
                designed charts and tables covering everything from asset allocation to performance.
                <br />
                <br />
                Make your communications look beautiful and contemporary– no more tables with the
                '80s look, too few charts and inconsistent fonts and colors. Assette lets you produce
                stunning professional reports that enhance your corporate brand.
                <br />
                <br />
                Visit our <a class="lnkblue" href="../gallery">Gallery</a> to see more than 150
                professional charts and tables that are ready to use, out-of-the-box.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/report_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/report_thumb_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/report_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
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
                Seamlessly integrate with your existing systems and ensure data quality
            </div>
            <div class="product_details_section_note2">
                Interfaces built from the ground up for APX<sup>&reg;</sup>, Axys<sup>&reg;</sup>,
                Advent OnDemand<sup>&reg;</sup>, Schwab PortfolioCenter<sup>&reg;</sup>, FactSet<sup>&reg;</sup>,
                BondEdge<sup>&reg;</sup>, and Excel<sup>&reg;</sup> let you effortlessly send all
                of your client report data to Assette. You don't need help from IT professionals.
                <br />
                <br />
                All interfaces are pre-built into Assette’s client communications software. You
                download them from the web, and you are ready to send data for thousands of accounts.
                <br />
                <br />
                Each time you send data, Assette runs over 250 <a class="lnkblue" href="data-validations.aspx">
                    checks</a> to ensure that only accurate information appears in your quarterly
                reports.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/report_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/report_thumb_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/report_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
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
