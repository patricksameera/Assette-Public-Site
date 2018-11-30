<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="the-expert-network.aspx.cs"
    Inherits="Assette.Web.PublicSite.the_expert_network" MasterPageFile="AssetteMaterPage.Master"
    Title="The Expert Network at Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            Our experts know how to improve sales, marketing and client service. And, their
            advice is available to Assette clients.
        </div>
        <div class="other_top_right">
            <img src="images/about.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="510" height="300" />
        </div>
    </div>
    <div class="other_bellow">
        <div class="other_bellow_left">
        </div>
        <div class="other_bellow_right">
            <span class="other_topic">Expert Network<br />
                <br />
            </span>The Expert Network consists of experts who help investment management firms
            improve sales, marketing, and client service. Contact these experts if you'd like
            to accumulate and retain assets, strengthen relationships, and streamline business
            processes. You'll find below a brief description of each provider.
            <br />
            <br />
            <img src="images/expert_network_logo1.gif" alt="" width="105" height="35" style="float: left;" /><div
                class="expert_title">
                Chatham Partners<br />
                <br />
            </div>
            <div class="expert_description">
                Do you know what your clients are really thinking about your firm? Do you know why
                you won or lost business? Chatham Partners conducts client satisfaction and win/loss
                surveys for institutional asset managers and provides other market research and
                consulting services that help you improve client service. For more information,
                please visit:<br />
                <a class="lnkblue" target="_blank" href="http://www.chathampartners.net/">www.chathampartners.net.</a><br />
                <div style="display: none">
                    <a href="contact.aspx">
                        <div class="expert_action_btn">
                            Contact Expert +</div>
                    </a>
                </div>
                <br />
                Contact: Peter Starr at 781.314.0600 or<br />
                pstarr@chathampartners.net<br />
                <br />
            </div>
            <img src="images/expert_network_logo2.gif" alt="" width="105" height="35" style="float: left;" /><div
                class="expert_title">
                Eager, Davis & Holmes<br />
                <br />
            </div>
            <div class="expert_description">
                Do your marketing materials and sales presentations effectively tell your story?
                Do you know the final presentations tactics used by firms that consistently win
                business? Eager, Davis & Holmes can help you improve the effectiveness of both your
                underlying story and your presenters. Eager, Davis & Holmes works with asset managers
                to improve their sales and marketing capabilities. For more information, please
                visit:<br />
                <a class="lnkblue" target="_blank" href="http://www.eagerdavisholmes.com/">www.eagerdavisholmes.com.</a>
                <br />
                <div style="display: none">
                    <a href="contact.aspx">
                        <div class="expert_action_btn">
                            Contact Expert +</div>
                    </a>
                </div>
                <br />
                Contact: Glenn Davis at 502.657.6478 or<br />
                gdavis@eagerdavisholmes.com<br />
                <br />
            </div>
            <img src="images/expert_network_logo3.gif" alt="" width="105" height="35" style="float: left;" /><div
                class="expert_title">
                Susan B. Weiner Investment Writing<br />
                <br />
            </div>
            <br />
            <br />
            <div class="expert_description">
                Do your clients understand your expertise and insight? Are you clearly explaining
                your outlook on the economy and your investment decisions in your commentary? You
                could win new business and retain more clients with more effective communications.
                Susan B. Weiner Investment Writing works with asset managers to write, edit and
                strategically communicate ideas. For more information, please visit:<br />
                <a class="lnkblue" target="_blank" href="http://www.investmentwriting.com/">www.investmentwriting.com.</a><br />
                <div style="display: none">
                    <a href="contact.aspx">
                        <div class="expert_action_btn">
                            Contact Expert +</div>
                    </a>
                </div>
                <br />
                Contact: Susan B. Weiner, CFA, at 617.969.4509 or
                <br />
                susan@investmentwriting.com
            </div>
            <div>
                <a href="#top">
                    <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" style="float: right;" alt="" width="94"
                        height="29" /></a></div>
        </div>
    </div>
</asp:Content>
