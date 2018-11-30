<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="investment-manager-software.aspx.cs"
    Inherits="Assette.Web.PublicSite.investment_manager_software" MasterPageFile="AssetteMaterPage.Master"
    Title="Investment Manager Software | Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            Assette is a proven cloud-based solution used by industry leaders such as SEI, Waddell
            & Reed, Hirtle Callaghan, and Boston Private Bank & Trust Company.
        </div>
        <div class="other_top_right">
            <img src="images/technology_banner.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="510" height="300" />
        </div>
    </div>
    <div class="other_bellow">
        <div class="other_bellow_left">
        </div>
        <div class="other_bellow_right">
            <span class="other_topic">Technology</span>
            <br />
            <br />
            Investment manager software should increase efficiency so you can devote more time
            to serving your clients. This is the underlying philosophy of Assette’s cloud-based
            model, which eliminates the need to maintain software and hardware.
            <br />
            <br />
            Security is also a top priority. Assette builds its client communications software
            on enterprise-class technology and data centers. Assette’s security meets the standards
            of large, publicly traded investment management firms such as SEI, Boston Private
            Bank & Trust Company, and Waddell & Reed Asset Management. Assette continually optimizes
            application code and manages security and backups—letting you focus on managing
            investments.
            <br />
            <br />
            With over 15 years of experience in cloud-based applications for investment management
            firms, Assette offers the most robust platform to automate client communications.</div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
