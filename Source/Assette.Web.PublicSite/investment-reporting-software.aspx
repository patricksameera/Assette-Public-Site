<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="investment-reporting-software.aspx.cs"
    Inherits="Assette.Web.PublicSite.investment_reporting_software" MasterPageFile="AssetteMaterPage.Master"
    Title="Investment Reporting Software | Assette for Client Reports" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="product_content_top">
        <div title="Click to Enlarge">
            <a class="fancybox" href="images/investment-performance-reporting-software-large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                <div class="product_top_left">
                    <div class="product_zoom">
                        Assette lets<br />
                        you create client<br />
                        communications<br />
                        filled with insight<br />
                        and investment<br />
                        stories, going<br />
                        beyond the<br />
                        standard reports<br />
                        with just charts<br />
                        and graphs.</div>
                </div>
                <div class="product_top_center">
                    <img src="images/investment-performance-reporting-software.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" width="450" height="386" />
                </div>
            </a>
        </div>
        <a class="fancybox" href="images/investment-performance-reporting-software-large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
            <div class="zoom_icon" title="Click to Enlarge">
                <img src="images/zoom_icon.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="30" height="30" />
            </div>
        </a>
        <div class="product_top_right">
            <div class="product_note1">
                Assette is a cloud-based, client communications application built for institutional
                investment managers. With pre-built interfaces to your existing systems, you can
                get up and running with Assette in days instead of weeks.
            </div>
            <hr class="product_line" />
            <div class="product_note2">
                <b>THE ASSETTE PROMISE</b><br />
                <br />
                We stand behind our products and services. We promise to delight you through onboarding
                and beyond with our 60-day unconditional <b>money-back guarantee.</b>
                <br />
                <br />
                There is no fine print – If you’re not happy after 60-days of going live, we give
                your money back. It’s that simple!</div>
        </div>
    </div>
    <div class="product_presentations">
        <div class="product_top">
        </div>
        <div class="product">
            <div class="product_title">
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette Presentations</div>
            <div class="product_description">
                A simpler and faster way to communicate the value of active management through client
                presentations, sales pitch books and product fact sheets.
            </div>
            <div class="product_bulletpoints">
                <ul>
                    <li>Win new business and retain clients by easily communicating the value you provide,
                        above and beyond passive investment options such as index funds.</li>
                    <li>Instill client confidence by articulating the reasons behind your investment decisions,
                        especially important during those inevitable times when performance fluctuates.
                    </li>
                    <li>Free up time to serve clients by slashing manual work and resulting errors.</li>
                </ul>
            </div>
            <%--<div class="product_video">
                <a class="fancybox-media" href="http://www.youtube.com/embed/sFfgPcTKG2E">
                    <img src="images/overview_presentation.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" width="415" height="274" /></a>
                <div class="product_note5">
                    Product Overview (01:00)</div>
            </div>--%>
            <div class="product_video">
                <a class="fancybox" href="images/presentation_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/presentation_thumb_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" style="width: 415px; height: 274px; border: 0px solid #cccccc;" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/presentation_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
            <div class="product_buttons">
                <%-- <a class="fancybox-media" href="http://www.youtube.com/embed/sFfgPcTKG2E">
                    <div class="product_btn">
                        WATCH OVERVIEW</div>
                </a>--%><a href="pitch-book-software.aspx">
                    <div class="product_btn">
                        LEARN MORE +</div>
                </a>
            </div>
        </div>
    </div>
    <div class="product_reports">
        <div class="product_top">
        </div>
        <div class="product">
            <div class="product_title">
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette Reports</div>
            <div class="product_description">
                A streamlined way to convey portfolio details with your insights through quarterly
                reports and custom reports.
            </div>
            <div class="product_bulletpoints">
                <ul>
                    <li>Increase client trust and understanding by taking the quarterly report, the most
                        consistent piece of communication your clients read, beyond basic portfolio values
                        and performance.</li>
                    <li>Retain assets by regularly communicating how you create value through active management.</li>
                    <li>Make quarter-ends stress-free by eliminating manual work, rekeying and resulting
                        errors.</li>
                </ul>
            </div>
            <%--<div class="product_video">
                <a class="fancybox-media" href="http://www.youtube.com/embed/sFfgPcTKG2E">
                    <img src="images/overview_reports.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" width="415" height="274" /></a>
                <div class="product_note5">
                    Product Overview (01:00)</div>
            </div>--%>
            <div class="product_video">
                <a class="fancybox" href="images/report_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/report_thumb_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" style="width: 415px; height: 274px; border: 0px solid #cccccc;" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/report_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
            <div class="product_buttons">
                <%-- <a class="fancybox-media" href="http://www.youtube.com/embed/sFfgPcTKG2E">
                    <div class="product_btn">
                        WATCH OVERVIEW</div>
                </a>--%><a href="portfolio-reporting-software.aspx">
                    <div class="product_btn">
                        LEARN MORE +</div>
                </a>
            </div>
        </div>
    </div>
    <div class="product_presentations">
        <div class="product_top">
        </div>
        <div class="product">
            <div class="product_title">
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette Portal</div>
            <div class="product_description">
                An easy way to keep clients and consultants continuously informed about the value
                of active management with your own, firm-branded, secure client portal.
            </div>
            <div class="product_bulletpoints">
                <ul>
                    <li>Increase client trust by providing anywhere, anytime access to portfolio information
                        and your thinking behind investment decisions.</li>
                    <li>Always stay connected to clients and consultants by quickly communicating the impact
                        on portfolios as market events unfold.</li>
                    <li>Free up time for proactive client service and marketing by making it easy for clients
                        and consultants to self-answer routine questions and learn about other investment
                        options you offer.</li>
                </ul>
            </div>
            <%--<div class="product_video">
                <a class="fancybox-media" href="http://www.youtube.com/embed/sFfgPcTKG2E">
                    <img src="images/overview_portal.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" width="415" height="274" /></a>
                <div class="product_note5">
                    Product Overview (01:00)</div>
            </div>--%>
            <div class="product_video">
                <a class="fancybox" href="images/portal_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/portal_thumb_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" style="width: 415px; height: 274px; border: 0px solid #cccccc;" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/portal_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
            <div class="product_buttons">
                <%--<a class="fancybox-media" href="http://www.youtube.com/embed/sFfgPcTKG2E">
                    <div class="product_btn">
                        WATCH OVERVIEW</div>
                </a>--%><a href="portfolio-management-system.aspx">
                    <div class="product_btn">
                        LEARN MORE +</div>
                </a>
            </div>
        </div>
    </div>
    <div class="product_easyreport">
        <div class="product_top">
        </div>
        <div class="product">
            <div class="product_title_double">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Easy Editions -
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette EasyPresentations,
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette EasyReports,
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette EasyPortal
            </div>
            <div class="product_description">
                The easiest way for small wealth management firms to create client presentations,
                quarterly reports and offer a firm-branded, secure client portal.
            </div>
            <div class="product_bulletpoints">
                <ul>
                    <li>Clearly show the value you provide to clients with customized client meeting presentations.</li>
                    <li>Take the quarterly report, the most consistent piece of communication your clients
                        see, to a new level by showing more than just portfolio values and performance.</li>
                    <li>Increase transparency and client trust by providing anywhere, anytime access to
                        portfolios through your very-own, firm-branded client portal.</li>
                </ul>
            </div>
            <%--<div class="product_video">
                <a class="fancybox-media" href="http://www.youtube.com/embed/sFfgPcTKG2E">
                    <img src="images/overview_easy.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" width="415" height="274" /></a>
                <div class="product_note5">
                    Product Overview (01:00)</div>
            </div>--%>
            <div class="product_video">
                <a class="fancybox" href="images/presentation_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/presentation_thumb_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" style="width: 415px; height: 274px; border: 0px solid #cccccc;" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/presentation_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
            <div class="product_buttons">
                <%--<a class="fancybox-media" href="http://www.youtube.com/embed/sFfgPcTKG2E">
                    <div class="product_btn">
                        WATCH OVERVIEW</div>
                </a>--%><a href="portfolio-accounting-system-reporting.aspx">
                    <div class="product_btn">
                        LEARN MORE +</div>
                </a>
            </div>
        </div>
    </div>
    <div style="height: 30px;">
    </div>
    <div class="learn_more_action_overflow" style="padding-left: 3px">
        <div class="learn_more_action_text">
            Visit the Gallery to see examples of leading investment management firms using Assette.
            See for yourself how other firms are delivering insights and communicating the value
            of active management.
        </div>
        <div class="learn_more_action_button">
            <a href="../gallery">
                <div class="learn_more_action_btn">
                    VISIT GALLERY</div>
            </a>
        </div>
    </div>
    <div style="height: 10px;">
    </div>
    <div class="scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
