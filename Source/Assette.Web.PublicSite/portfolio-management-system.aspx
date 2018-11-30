<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portfolio-management-system.aspx.cs"
    Inherits="Assette.Web.PublicSite.portfolio_management_system" MasterPageFile="AssetteMaterPage.Master"
    Title="Client Portal for Portfolio Management Systems | Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="product_details">
        <div class="product_details_top">
        </div>
        <div class="product">
            <div class="product_details_title">
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette Portal</div>
            <div class="product_details_left_center">
                <div class="product_details_description">
                    Increase convenience and transparency to clients and consultants while streamlining
                    information delivery.
                </div>
                <div class="product_details_bulletpoints">
                    <ul>
                        <li>Your clients are connected and they expect to be connected to you. Always stay in
                            touch and provide daily portfolio information and frequent updates.</li>
                        <li>Provide timely insights and perspectives on market conditions and economic events,
                            and their impact on clients’ portfolios.</li>
                        <li>Reduce manual effort associated with report delivery while enhancing your corporate
                            brand and professionalism.</li>
                    </ul>
                </div>
            </div>
            <%--<div class="product_details_video">
                <a class="product_video_registration" videokey="sFfgPcTKG2E" href="javascript:void(0);"
                    product="Assette Portal" time="2:42">
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
                    product="Assette Portal" time="2:42">
                    <div class="product_details_btn">
                        WATCH DEMO</div>
                </a>--%><a target="_blank" href="datasheets/Assette-Portal-Datasheet.pdf">
                    <div class="product_details_btn">
                        DATA SHEET</div>
                </a><a class="pricing_dialog_standard_registration" href="javascript:void(0);" product_title="Pricing – Standard Editions"
                    product="Assette Portal">
                    <div class="product_details_btn pricing_button">
                        PRICING<div class="pricing_lock" id="pricing_padlock" runat="server">
                        </div>
                    </div>
                </a><a href="javascript:void('0');">
                    <div class="product_details_btn contact_sales_sign_up" videokey="sFfgPcTKG2E" product="Assette Portal">
                        CONTACT ASSETTE</div>
                </a>
            </div>
        </div>
    </div>
    <div class="learn_more_action">
        Let us show you how easy it is to increase convenience to clients with a secure
        client portal.<a href="javascript:void('0');">
            <div class="learn_more_action_btn request_live_demo" videokey="sFfgPcTKG2E" product="Assette Portal">
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
                Provide exceptional client service and show the value you add
            </div>
            <div class="product_details_section_note2">
                During those inevitable times when performance suffers, it is exceptional client
                service that buys you time to turnaround performance.
                <br />
                <br />
                Allowing clients to self-answer routine questions and automating manual information
                delivery frees you up for proactive client service – time you can use to check-in
                with clients and discuss ideas that illustrate the value you provide.
                <br />
                <br />
                Keeping clients and consultants consistently updated also keeps you on top of their
                mind when they are looking to add more assets to outside managers.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/portal_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/portal_thumb_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/portal_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
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
                Save time, money and paper while delivering information faster
            </div>
            <div class="product_details_section_note2">
                No longer is it sufficient to rely on regular mail to deliver quarterly reports
                and other client communications. Your clients expect electronic delivery and timely
                correspondence.
                <br />
                <br />
                Manual delivery is not only costly and unnecessary, but also a waste of paper. Stuffing
                envelopes take away time from serving clients.
                <br />
                <br />
                With Assette, you increase convenience to clients while boosting internal efficiency.
                Combine your client portal with <a href="portfolio-reporting-software.aspx" class="lnkblue">
                    Assette Reports</a> for a seamless system to both produce and deliver client
                reports to clients and consultants.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/portal_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/portal_thumb_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/portal_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
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
                Enhance your professionalism—providing a secure client portal is easy
            </div>
            <div class="product_details_section_note2">
                Clients and consultants today, are comfortable interacting online with custodians
                and other financial institutions and they increasingly expect online access to portfolios
                from your firm.
                <br />
                <br />
                They want to know the impact of market events as they unfold and the insights behind
                your investment decisions.
                <br />
                <br />
                Assette Portal lets you communicate timely information and rich insights through
                your own client portal. Your portal is branded to reflect your corporate image.
                Assette makes you look good while increasing client satisfaction.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/portal_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/portal_thumb_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/portal_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
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
                Seamlessly integrate with your systems, with no need for manual processes
            </div>
            <div class="product_details_section_note2">
                Interfaces built from the ground up for APX<sup>&reg;</sup>, Axys<sup>&reg;</sup>,
                Advent OnDemand<sup>&reg;</sup>, Schwab PortfolioCenter<sup>&reg;</sup>, FactSet<sup>&reg;</sup>,
                BondEdge<sup>&reg;</sup>, and Excel<sup>&reg;</sup> let you effortlessly send all
                of your data to your client portal. You don't need help from IT professionals.
                <br />
                <br />
                All interfaces are pre-built. You download them from the web, and you are ready
                to send data in minutes. Send data daily, automatically.
                <br />
                <br />
                Each time you send data, Assette runs over 250 <a class="lnkblue" href="data-validations.aspx">
                    checks</a> to ensure that only accurate information is reflected on your client
                portal.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/portal_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/portal_thumb_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        style="width: 415px; height: 253px;" alt="" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/portal_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
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
