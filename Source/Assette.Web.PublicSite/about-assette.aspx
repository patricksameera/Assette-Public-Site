<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about-assette.aspx.cs"
    Inherits="Assette.Web.PublicSite.about_assette" MasterPageFile="AssetteMaterPage.Master"
    Title="About Assette | Client Reporting Software Since 1998" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            Delivering investment insights since 1998. Backed by the "Assette Promise", our
            60-day money back guarantee, and the best client service in the industry.
        </div>
        <div class="other_top_right">
            <img src="images/about.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                alt="" width="510" height="300" />
        </div>
    </div>
    <div class="other_bellow">
        <div class="other_bellow_left">
        </div>
        <div class="other_bellow_right">
            <span class="other_topic">About</span>
            <br />
            <br />
            Assette lets you easily upload all the stories and insights behind your investment
            results and automatically combines data from your portfolio accounting and analytics
            systems to create beautiful, accurate and insightful client communications. Assette
            produces material that differentiates you from your competition and brings a new
            dimension of value to your client communications.
            <br />
            <br />
            With all your information in one place, and safely stored in the cloud, Assette
            applications help you create client presentations, sales pitch books, product fact
            sheets, monthly and quarterly reports, and web-based reports that are professional,
            informative, and appealing. All of these are produced with no manual effort, saving
            countless hours, headaches and avoiding costly errors.
            <br />
            <br />
            <a href="onboarding.aspx" class="lnkblue">Onboarding</a> Assette is easy, there's
            no need to disrupt or replace your existing systems. Assette applications are cloud-based
            and available 24/7 to your staff and clients.
            <br />
            <br />
            Your data is safe with Assette. The company hosts all applications at secure, SOC
            2 (formerly SAS 70) certified data centers and employs multiple layers of security
            to safeguard your data.
            <br />
            <br />
            Assette is headquartered in Boston, Massachusetts and is dedicated to providing
            high-quality and easy-to-use applications backed by the "Assette Promise", our 60-day
            money back guarantee, and the best client service in the industry.
        </div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
