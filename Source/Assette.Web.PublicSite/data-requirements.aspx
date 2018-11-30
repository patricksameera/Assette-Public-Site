<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="data-requirements.aspx.cs"
    Inherits="Assette.Web.PublicSite.data_requirements" MasterPageFile="AssetteMaterPage.Master"
    Title="Data Requirements | Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            A few simple steps make sure you send accurate data to Assette.
        </div>
        <div class="other_top_right">
            <img src="images/technology_banner.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="510" height="300" />
        </div>
    </div>
    <div class="other_bellow">
        <div class="other_bellow_left">
        </div>
        <div class="other_bellow_right">
            <span class="other_topic">Data Requirements</span>
            <br />
            <br />
            We work with you to ensure your portfolio management system is set-up correctly
            to work smoothly with Assette. This means:
            <br />
            <ul class="description_bulletpoints">
                <li><b>Maintaining performance at the relevant levels</b>—Assette relies on the performance
                    factors (intervals) in your system to calculate the performance periods you show
                    on client communications. If you intend to report performance for groups, asset
                    classes, and sectors, in addition to individual accounts, then performance intervals
                    must be maintained at all these levels.</li>
                <li><b>Maintaining index values</b>—Index values must be maintained to properly reflect
                    index performance. If you don’t maintain index values in your portfolio management
                    system, we will work with you so you can provide and maintain them.</li>
                <li><b>Preparing securities by reporting categories</b>—Your securities must be marked
                    by asset class, sector, security type, etc. You only need to prepare securities
                    for categories you intend to report, and Assette can help you do this.</li>
                <li><b>Use of the portfolio management system per recommendations by the vendor</b>—
                    Your portfolio management system should be setup and used in ways recommended by
                    your system vendor. As an example, you should be coding asset classes, sectors,
                    etc. in fields intended for those purposes by the vendor. If your system is not
                    setup according to vendor recommendations, Assette can assist you by providing custom
                    data connectors. These custom connectors will prepare only the data to be used with
                    Assette, and will not alter the data in your portfolio management system. </li>
                <li><b>Automatic transfer of custom fields and labels</b>—If you have created custom
                    fields or labels to store certain data items, these customized changes will get
                    transferred to Assette with zero work on your part.</li>
            </ul>
            Uncertain as to whether your data is accurate or properly prepared? Don’t worry.
            If anything is missing to create accurate client communications, our <a class="lnkblue"
                href="/data-validations.aspx">data checks</a> will alert you to areas of concern
            and Assette will work with you to ensure accurate, easy data integration.
        </div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" style="float: right;" alt="" width="94"
                height="29" /></a></div>
</asp:Content>
