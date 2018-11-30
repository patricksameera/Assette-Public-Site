<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portfolio-management-software.aspx.cs"
    Inherits="Assette.Web.PublicSite.portfolio_management_software" MasterPageFile="AssetteContentMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="fancy_top_left_pricing">
            Whether you are with a large firm or smaller advisor, Assette can help you clearly
            communicate your value.
        </div>
        <div class="fancy_top_right">
            <img src="images/peoplewalking.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="510" height="110" />
        </div>
    </div>
    <div class="other_bellow">
        <div class="fancy_bellow_right">
            <br />
            <span class="other_topic">Compare Assette Products</span>
            <br />
            <br />
            <b>Assette Presentations, Assette Reports and Assette Portal ("Standard Editions")</b>
            <br />
            <br />
            Looking for the next-generation client communications for institutional investment
            management firms? Assette offers the best presentation, client reporting, and client
            portal applications on the market. With Assette, you can easily combine data from
            your portfolio management software — APX<sup>&reg;</sup>, Axys<sup>&reg;</sup>,
            Advent OnDemand<sup>&reg;</sup> or Schwab PortfolioCenter<sup>&reg;</sup> — and
            analytics systems such as FactSet<sup>&reg;</sup>, BondEdge<sup>&reg;</sup> with
            your insights and investment stories to create powerful client communications that
            go beyond charts and graphs.
            <br />
            <br />
            <b>Assette EasyPresentations, Assette EasyReports and Assette EasyPortal ("Easy Editions")</b>
            <br />
            <br />
            If you're with a small wealth management firm that is looking to take client reporting
            to the next level, the Easy Editions, simplified versions of Assette's standard
            applications, are the solutions for you. With the Easy Editions, you can easily
            display data from Axys<sup>&reg;</sup>, Advent OnDemand<sup>&reg;</sup> or Schwab
            PortfolioCenter<sup>&reg;</sup> to provide professional presentations, client reports
            and a secure client portal to your clients.
            <br />
            <br />
            <div style="margin-left: 5px;">
                <table>
                    <tbody>
                        <tr>
                            <td class="ft_td_data_description">
                            </td>
                            <td class="ft_td_spacer">
                            </td>
                            <td class="ft_td_header_description">
                                <b>Standard Editions</b>
                            </td>
                            <td class="ft_td_spacer">
                            </td>
                            <td class="ft_td_header_description">
                                <b>Easy Editions</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Branding on presentations, reports and client portal
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_description ft_td_data_price_color3">
                                Use pre-built themes provided by Assette or define your own
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_description ft_td_data_price_color3">
                                Use pre-built themes provided by Assette or define your own
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br />
            <div style="margin-left: 5px;">
                <table>
                    <tbody>
                        <tr>
                            <td class="ft_td_data_aum">
                                <div style="text-align: left;">
                                    <b>Insights and Other Content:</b></div>
                            </td>
                            <td class="ft_td_spacer">
                            </td>
                            <td class="ft_td_data_description">
                            </td>
                            <td class="ft_td_spacer">
                            </td>
                            <td class="ft_td_data_description">
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Your perspectives and updates (market commentary, firm updates, etc.)
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color1">
                                <img src="images/tick.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" width="32" height="32" alt="" />
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color1">
                                <img src="images/tick.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" width="32" height="32" alt="" />
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Sector exposure rationale, buy/sell reasons, security descriptions, etc.
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                                <img src="images/tick.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" width="32" height="32" alt="" />
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Smart Sentences – automatically write out sentences that highlight your results
                                such as excess return, top contributors, etc.
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                                <img src="images/tick.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" width="32" height="32" alt="" />
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br />
            <div style="margin-left: 5px;">
                <table>
                    <tbody>
                        <tr>
                            <td class="ft_td_data_aum">
                                <div style="text-align: left;">
                                    <b>Reports library and supported data:</b></div>
                            </td>
                            <td class="ft_td_spacer">
                            </td>
                            <td class="ft_td_data_description">
                            </td>
                            <td class="ft_td_spacer">
                            </td>
                            <td class="ft_td_data_description">
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Pre-built chart and table outlines with extreme customizability. Visit our <a target="_blank"
                                    class="lnkblue" href="../gallery">Gallery</a> to view the library.
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                                150+
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                                50+
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Composite performance and other composite data
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                                <img src="images/tick.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" width="32" height="32" alt="" />
                                <br />
                                <span style="font-size: 12px; color: #666666;">if using Axys<sup>&reg;</sup> and APX<sup>&reg;</sup></span>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Characteristics (both equity and fixed income)
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                                <img src="images/tick.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" width="32" height="32" alt="" />
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Attribution (both equity and fixed income)
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                                <img src="images/tick.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" width="32" height="32" alt="" />
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Sector performance
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                                <img src="images/tick.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" width="32" height="32" alt="" />
                                <br />
                                <div style="font-size: 12px; color: #666666; line-height: 20px;">if you calculate in
                                    the portfolio management system or an analytics system</div>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br />
            <div style="margin-left: 5px;">
                <table>
                    <tbody>
                        <tr>
                            <td class="ft_td_data_aum">
                                <div style="text-align: left;">
                                    <b>Other:</b></div>
                            </td>
                            <td class="ft_td_spacer">
                            </td>
                            <td class="ft_td_header_description">
                            </td>
                            <td class="ft_td_spacer">
                            </td>
                            <td class="ft_td_header_description">
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Portfolio management systems with seamless interfaces
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_description ft_td_data_price_color3">
                                APX<sup>&reg;</sup>, Axys<sup>&reg;</sup>, Advent OnDemand<sup>&reg;</sup>, Schwab
                                PortfolioCenter<sup>&reg;</sup>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_description ft_td_data_price_color3">
                                Axys<sup>&reg;</sup>, Advent OnDemand<sup>&reg;</sup>, Schwab PortfolioCenter<sup>&reg;</sup>
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Number of accounts allowed
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_description ft_td_data_price_color3">
                                Unlimited
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_description ft_td_data_price_color3">
                                5,000
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Analytics data from
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_description ft_td_data_price_color3">
                                FactSet<sup>&reg;</sup>, BondEdge<sup>&reg;</sup>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_description">
                                Other Excel<sup>&reg;</sup> - based data
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_description ft_td_data_price_color3">
                                Unlimited
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_description ft_td_data_price_color3">
                                Limited data relating to funds
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br />
        </div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
