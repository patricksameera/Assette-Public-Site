<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pitch-book-software.aspx.cs"
    Inherits="Assette.Web.PublicSite.pitch_book_software" MasterPageFile="AssetteMaterPage.Master"
    Title="Pitch Book Software – Investment Presentations | Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="product_details">
        <div class="product_details_top">
        </div>
        <div class="product">
            <div class="product_details_title">
                <img src="images/double_arrow.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="28" height="27" />&nbsp;&nbsp;Assette Presentations</div>
            <div class="product_details_description">
                Creating PowerPoint client presentations, sales pitch books and product fact sheets
                is simpler and faster with this fully integrated, client communications application.
            </div>
            <div class="product_details_bulletpoints">
                <ul>
                    <li>No more rekeying data, no more errors – automatically integrate data from accounting
                        and analytics systems to generate presentations and shave 85% off manual work.</li>
                    <li>Easily communicate the insights driving your investment decisions with sector overviews,
                        active share analysis and other data.</li>
                    <li>Publish and store updated firm information, team bios, investment process descriptions
                        and other information to a single place and have all presentations reflect the latest
                        information.</li>
                </ul>
            </div>
            <div class="product_details_video" style="display: none;">
                <img src="images/video_image_large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                    alt="" width="415" height="253" />
            </div>
            <%--<div class="product_details_video" style="display: inline;">
                <a class="product_video_registration" videokey="sFfgPcTKG2E" href="javascript:void(0);"
                    product="Assette Presentations" time="2:42">
                    <img src="images/video_image_large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="415" height="253" /></a>
                <div class="product_note5">
                    Product Demo (01:00)</div>
            </div>--%>
            <%--<div class="product_details_video" style="display: inline;">
                <a class="product_video_registration_vimeo" videokey="sFfgPcTKG2E" href="javascript:void(0);">
                    <img src="images/video_image_large.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="415" height="253" /></a>
                <div class="product_note5">
                    Product Demo (01:00)</div>
            </div>--%>
            <div class="product_details_buttons">
                <%--<a class="product_video_registration" videokey="sFfgPcTKG2E" href="javascript:void(0);"
                    product="Assette Presentations" time="2:42">
                    <div class="product_details_btn">
                        WATCH DEMO</div>
                </a>--%><a target="_blank" href="datasheets/Assette-Presentations-Datasheet.pdf">
                    <div class="product_details_btn">
                        DATA SHEET</div>
                </a><a class="pricing_dialog_standard_registration" href="javascript:void(0);" product_title="Pricing - Standard Editions"
                    product="Assette Presentations">
                    <div class="product_details_btn pricing_button">
                        PRICING<div class="pricing_lock" id="pricing_padlock" runat="server">
                        </div>
                    </div>
                </a><a href="javascript:void('0');">
                    <div class="product_details_btn contact_sales_sign_up" videokey="sFfgPcTKG2E" product="Assette Presentations">
                        CONTACT ASSETTE</div>
                </a>
            </div>
        </div>
    </div>
    <div class="learn_more_action">
        Let us show you how easy it is to create presentations filled with insights and
        investment stories.<a href="javascript:void('0');">
            <div class="learn_more_action_btn request_live_demo" videokey="sFfgPcTKG2E" product="Assette Presentations">
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
                Spend less time preparing presentations and fill your client communications with
                insights and investment stories
            </div>
            <div class="product_details_section_note2">
                Easily combine rich information, ranging from firm updates to investment insights,
                combined with data from your standard accounting and analytics systems, to quickly
                create presentations that clearly tell the story behind your results.
                <br />
                <br />
                There is no more hand-keying of data or transferring Excel<sup>&reg;</sup> charts
                to PowerPoint<sup>&reg;</sup>. No more multiple rounds of error corrections.
                <br />
                <br />
                With Assette, you update content, click to integrate data and generate beautiful,
                accurate PowerPoint presentations.
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/presentation_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/presentation_thumb_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" style="width: 415px; height: 274px;" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/presentation_1.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="product_details_section">
        <div class="product_details_section_top">
        </div>
        <div class="product">
            <div class="product_details_section_left">
                <div class="product_details_section_note1">
                    Enhance your brand because it's easy to create attractive presentations
                </div>
                <div class="product_details_section_note2">
                    Start by simply placing charts, tables, and your insights on slides to create templates,
                    a one-time effort.
                    <br />
                    <br />
                    Then, Assette automatically populates templates with data from your internal systems
                    and inserts the latest versions of your insights and stories.<br />
                    <br />
                    Investment stories and strategy-specific insights are automatically integrated to
                    create compelling client presentations.
                </div>
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/presentation_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/presentation_thumb_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" style="width: 415px; height: 274px; border: 0px solid #cccccc;" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/presentation_2.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="product_details_section product_details_section_border_bottom">
        <div class="product_details_section_top">
        </div>
        <div class="product">
            <div class="product_details_section_left">
                <div class="product_details_section_note1">
                    Get started quickly—Pick from a content library designed for institutional firms
                </div>
                <div class="product_details_section_note2">
                    Select from over 150 professionally designed charts and tables, covering everything
                    from rolling returns to performance attribution.<br />
                    <br />
                    Settings in the charts and tables enable customization, so you can meet exact client
                    and sales information needs.<br />
                    <br />
                    Visit our <a class="lnkblue" href="../gallery">Gallery</a> to view the breadth of
                    content that is included in Assette.
                </div>
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/presentation_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/presentation_thumb_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" style="width: 415px; height: 274px; border: 1px solid #cccccc;" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/presentation_3.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="product_details_section product_details_section_border_bottom">
        <div class="product_details_section_top">
        </div>
        <div class="product">
            <div class="product_details_section_left">
                <div class="product_details_section_note1">
                    Seamless integration with your existing systems and data checks
                </div>
                <div class="product_details_section_note2">
                    Interfaces built from the ground up for APX<sup>&reg;</sup>, Axys<sup>&reg;</sup>,
                    Advent OnDemand<sup>&reg;</sup>, Schwab PortfolioCenter<sup>&reg;</sup>, FactSet<sup>&reg;</sup>,
                    BondEdge<sup>&reg;</sup>, and Excel<sup>&reg;</sup> let you effortlessly combine
                    all the data you need for client presentations, sales pitch books and product fact
                    sheets. You don't need help from IT professionals.
                    <br />
                    <br />
                    All interfaces are pre-built. Easily download them from the web, and you are ready
                    to send data in minutes.
                    <br />
                    <br />
                    Each time you send data, Assette runs over 250 <a class="lnkblue" href="data-validations.aspx">
                        checks</a> on your data to ensure that only accurate information appears in
                    your important client communications.
                </div>
            </div>
            <div class="product_details_section_right">
                <a class="fancybox" href="images/presentation_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
                    <img src="images/presentation_thumb_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                        alt="" style="width: 415px; height: 274px; border: 0px solid #cccccc;" class="image_shading" /></a>
                <br />
                <div title="Click to enlarge">
                    <a class="fancybox product_zoom_icon" href="images/presentation_4.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>">
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
