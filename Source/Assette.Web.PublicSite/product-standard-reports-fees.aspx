<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product-standard-reports-fees.aspx.cs"
    Inherits="Assette.Web.PublicSite.product_standard_reports_fees" MasterPageFile="AssetteContentMasterPage.Master" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="fancy_top_left_pricing_small">
            Assette’s pricing has no hidden fees. Everything you need to know is outlined here.
            We make buying Assette hassle-free.
        </div>
        <div class="fancy_top_right">
            <img src="images/numbers.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                alt="" width="510" height="110" />
        </div>
    </div>
    <div class="other_bellow">
        <div class="fancy_bellow_right">
            <br />
            <span class="other_topic">Pricing – Standard Editions</span>
            <br />
            <br />
            <div class="learn_more_action_overflow_pricing" id="standardParicingCTA" runat="server"
                visible="false">
                <div class="pricing_action_text">
                    If you're with a small firm that is looking for an affordable way to take client
                    reporting to the next level, see pricing for our Easy Editions.
                </div>
                <div class="pricing_action_button">
                    <a href="investment-reporting-software.aspx">
                        <div class="pricing_more_action_btn">
                            VIEW PRICING</div>
                    </a>
                    <br />
                </div>
            </div>
            <div style="margin-left: 0px;">
                <table>
                    <tbody>
                        <tr>
                            <td colspan="5">
                            </td>
                            <td class="ft_td_spacer_small">
                            </td>
                            <td colspan="3" class="ft_td_header_small_top">
                                <b>Interface to Each Analytics System
                                    <br />
                                    (FactSet and BondEdge)</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_header_small_lengthy">
                                <div style="text-align: left;">
                                    <b>Assets Under Management (AUM)</b></div>
                            </td>
                            <td class="ft_td_spacer_small">
                            </td>
                            <td class="ft_td_header_small">
                                <b>Onboarding Fee</b>
                            </td>
                            <td class="ft_td_spacer_small">
                            </td>
                            <td class="ft_td_header_small">
                                <b>Management Fee</b>
                            </td>
                            <td class="ft_td_spacer_small">
                            </td>
                            <td class="ft_td_header_small_dark">
                                <b>Onboarding Fee</b>
                            </td>
                            <td class="ft_td_spacer_small">
                            </td>
                            <td class="ft_td_header_small_dark">
                                <b>Management Fee</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_aum_small">
                                Less than <sup>$</sup>2.5<b>B</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small ft_td_data_price_color1">
                                <sup>$</sup>16,300
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small ft_td_data_price_color1">
                                <sup>$</sup>1,580 /mo
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small_dark ft_td_data_price_color1">
                                <sup>$</sup>3,100
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small_dark ft_td_data_price_color1">
                                <sup>$</sup>320 /mo
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_aum_small">
                                <sup>$</sup>2.5<b>B</b> - <sup>$</sup>5<b>B</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small ft_td_data_price_color2">
                                <sup>$</sup>19,600
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small ft_td_data_price_color2">
                                <sup>$</sup>1,790 /mo
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small_dark ft_td_data_price_color2">
                                <sup>$</sup>3,600
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small_dark ft_td_data_price_color2">
                                <sup>$</sup>380 /mo
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_aum_small">
                                <sup>$</sup>5<b>B</b> - <sup>$</sup>10<b>B</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small ft_td_data_price_color3">
                                <sup>$</sup>24,600
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small ft_td_data_price_color3">
                                <sup>$</sup>2,410 /mo
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small_dark ft_td_data_price_color3">
                                <sup>$</sup>4,100
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small_dark ft_td_data_price_color3">
                                <sup>$</sup>430 /mo
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_aum_small">
                                <sup>$</sup>10<b>B</b> - <sup>$</sup>15<b>B</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small ft_td_data_price_color4">
                                <sup>$</sup>28,900
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small ft_td_data_price_color4">
                                <sup>$</sup>2,680 /mo
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small_dark ft_td_data_price_color4">
                                <sup>$</sup>4,600
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small_dark ft_td_data_price_color4">
                                <sup>$</sup>490 /mo
                            </td>
                        </tr>
                        <%--<tr>
                            <td class="ft_td_data_aum_small">
                                <sup>$</sup>15<b>B</b> - <sup>$</sup>20<b>B</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small ft_td_data_price_color1">
                                <sup>$</sup>35,600
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small ft_td_data_price_color1">
                                <sup>$</sup>3,450 /mo
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small_dark ft_td_data_price_color1">
                                <sup>$</sup>5,100
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price_small_dark ft_td_data_price_color1">
                                <sup>$</sup>540 /mo
                            </td>
                        </tr>--%>
                        <tr>
                            <td class="ft_td_data_aum_small">
                                More than <sup>$</sup>15<b>B</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_aum" colspan="8" align="center">
                                <div style="font-size: 15px;">
                                    Please contact Assette for fees.</div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="fancy_dialog_bullet">
                <ul>
                    <li>The primary Onboarding Fee and Management Fee includes the interface to your portfolio
                        management system – APX<sup>&reg;</sup>, Axys<sup>&reg;</sup>, Advent OnDemand<sup>&reg;</sup>
                        or Schwab PortfolioCenter<sup>&reg;</sup>.</li>
                    <li>The pricing above applies to each application – Assette Presentations, Assette Reports
                        and Assette Portal. If you buy more than one application, you only pay 66% for the
                        second and third application.</li>
                    <li>You can send data to Assette as often as you like; monthly, quarterly or even daily.
                        There are no additional fees for re-sending data.</li>
                </ul>
            </div>
            <div class="fancy_dialog_bullet">
                <br />
                <br />
                <b>Additional items you should know:</b>
                <br />
                <ul>
                    <li>AUM falling to a tier below the tier at the time of contract signing ("Initial Tier")
                        will not lower the Management Fee – the fee associated with the Initial Tier is
                        the minimum fee. If you exceed the AUM in the initial tier, you automatically move
                        up to the next tier for the Management Fee.</li>
                    <li>Five users are included in the above fees. Additional users cost $23 per month per
                        user. There is no additional Onboarding Fee to add users.</li>
                    <li>If you buy the Assette Portal, there is an annual fee for the SSL Certificate. An
                        SSL Certificate is required to make your portal secure. Assette purchases these
                        certificates from Verisign and passes the cost to you. The current cost is $399/year.</li>
                    <li>The Onboarding Fee is one-time – you pay 50% at time of signing agreements and the
                        remainder when you go live on the application. The monthly Management Fee starts
                        when you go live.</li>
                </ul>
            </div>
            <br />
            <ul>
                <li style="font-size: 12px;">Above fees subject to change without notice</li></ul>
        </div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
