<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product-easy-reports-fees.aspx.cs"
    Inherits="Assette.Web.PublicSite.product_easy_reports_fees" MasterPageFile="AssetteContentMasterPage.Master" %>

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
            <span class="other_topic">Pricing – Easy Editions</span>
            <br />
            <br />
            <div style="margin-left: 50px;">
                <table>
                    <tbody>
                        <tr>
                            <td class="ft_td_header_lengthy">
                                <div style="text-align: left;">
                                    <b>Assets Under Management (AUM)</b></div>
                            </td>
                            <td class="ft_td_spacer">
                            </td>
                            <td class="ft_td_header">
                                <b>Onboarding Fee</b>
                            </td>
                            <td class="ft_td_spacer">
                            </td>
                            <td class="ft_td_header">
                                <b>Management Fee</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_aum">
                                Less than <sup>$</sup>250<b>M</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color1">
                                <sup>$</sup>4,499
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color1">
                                <sup>$</sup>399 /mo
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_aum">
                                <sup>$</sup>250<b>M</b> - <sup>$</sup>500<b>M</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color2">
                                <sup>$</sup>5,999
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color2">
                                <sup>$</sup>499 /mo
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_aum">
                                <sup>$</sup>500<b>M</b> - <sup>$</sup>750<b>M</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                                <sup>$</sup>7,499
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color3">
                                <sup>$</sup>659 /mo
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_aum">
                                <sup>$</sup>750<b>M</b> - <sup>$</sup>1<b>B</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color4">
                                <sup>$</sup>9,499
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_price ft_td_data_price_color4">
                                <sup>$</sup>799 /mo
                            </td>
                        </tr>
                        <tr>
                            <td class="ft_td_data_aum">
                                More than <sup>$</sup>1<b>B</b>
                            </td>
                            <td>
                            </td>
                            <td class="ft_td_data_aum" colspan="3" align="center">
                                <div style="font-size: 15px;">
                                    Please contact Assette for fees.</div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="fancy_dialog_bullet">
                <ul>
                    <li>The pricing above applies to each application – Assette EasyPresentations, Assette
                        EasyReports and Assette EasyPortal. If you buy more than one application, you only
                        pay 66% for the second and the third application. </li>
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
                    <li>With Assette EasyReports, you have the option of emailing monthly/quarterly reports
                        automatically from the application. Using the email functionality will increase
                        the Management Fee by <span class="ft_td_data_price_color1"><sup>$</sup>69</span>
                        , <span class="ft_td_data_price_color2"><sup>$</sup>79</span>, <span class="ft_td_data_price_color3">
                            <sup>$</sup>99</span> and <span class="ft_td_data_price_color4"><sup>$</sup>109</span>
                        per month respectively, for each AUM tier.</li>
                    <li>Three users are included in the above fees. Additional users cost $23 per month
                        per user. There is no additional Onboarding Fee to add users. </li>
                    <li>If you buy the Assette EasyPortal, there is an annual fee for the SSL Certificate.
                        An SSL Certificate is required to make your portal secure. Assette purchases these
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
