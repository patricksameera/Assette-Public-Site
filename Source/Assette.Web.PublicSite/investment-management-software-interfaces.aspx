<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="investment-management-software-interfaces.aspx.cs"
    Inherits="Assette.Web.PublicSite.investment_management_software_interfaces" MasterPageFile="AssetteMaterPage.Master"
    Title="Assette Interfaces with Investment Management Software" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            <b>Data integration made easy.</b> Robust, proven interfaces to leading data sources
            - APX<sup>&reg;</sup>, Axys<sup>&reg;</sup>, Advent OnDemand<sup>&reg;</sup>, PortfolioCenter<sup>&reg;</sup>,
            FactSet<sup>&reg;</sup>, BondEdge<sup>&reg;</sup> and Excel<sup>&reg;</sup>.
        </div>
        <div class="other_top_right">
            <img src="images/technology_banner.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                alt="" width="510" height="300" />
        </div>
    </div>
    <div class="other_bellow">
        <div class="other_bellow_left">
        </div>
        <div class="other_bellow_right">
            <span class="other_topic">Data Interfaces</span>
            <br />
            <br />
            Easy-to-use data interfaces make you more efficient. With over 15 years of experience
            integrating data from a wide variety of investment management software, Assette
            has the easiest-to-use interfaces to the industry's leading systems. There is <b>no</b>
            IT effort needed to set-up the interfaces; they are pre-built, downloadable from
            the web and you are ready to send data in minutes. With just a few clicks, you can
            seamlessly integrate all the data you need for client communications for thousands
            of accounts.
            <br />
            <br />
            All Assette data interfaces are designed to work strictly on a read-only basis,
            so when you send data, there is no need to worry about your sensitive data being
            updated without your knowledge.
            <br />
            <br />
            The data you send to Assette is checked for errors and combined with your insights
            and investment stories so you can easily and effectively convey the value you provide
            to clients. You can send data monthly, quarterly or even daily to consistently keep
            your clients updated. There is no need to send data separately for each application
            – <a class="lnkblue" href="pitch-book-software.aspx">Assette Presentations<sup>&trade;</sup></a>,
            <a class="lnkblue" href="portfolio-reporting-software.aspx">Assette Reports<sup>&trade;</sup></a>
            and the <a class="lnkblue" href="portfolio-management-system.aspx">Assette Portal<sup>&trade;</sup></a>
            all draw from the same rich pool of data making it easy for you to communicate,
            accurately and efficiently, with clients and consultants.
            <br />
            <br />
            <b>Advent Portfolio Exchange<sup>&reg;</sup> (APX)</b>
            <br />
            <br />
            The APX Connector draws on public views provided by Advent and four custom reports
            created by Assette to allow you to quickly push data to Assette. Assette has worked
            with APX data since 2008.
            <br />
            <br />
            <b>Advent Axys<sup>&reg;</sup></b>
            <br />
            <br />
            The Axys Connector taps the underlying system files—CLI, GRP, PBF, PRF, INF, etc.—and
            four custom reports written by Assette to let you easily push data for client communications.
            Assette has worked with Axys data since 2003.
            <br />
            <br />
            <b>Advent OnDemand<sup>&reg;</sup></b>
            <br />
            <br />
            The Advent OnDemand Connector was developed with assistance from Advent and automatically
            runs on the OnDemand platform based on a schedule defined by you. The connector
            sends all the data needed for professional client communications. Assette has worked
            with Advent OnDemand data since 2012.
            <br />
            <br />
            <b>Schwab PortfolioCenter<sup>&reg;</sup></b>
            <br />
            <br />
            The PortfolioCenter Connector links directly to the underlying database and leverages
            two native reports to make transferring data effortless. Assette has worked with
            PortfolioCenter data since 2009. Assette is also a <a class="lnkblue" target="_blank"
                href="https://schwabpt.com/providers/technology/reports.asp">third-party provider</a>
            of Schwab Performance Technologies.
            <br />
            <br />
            <b>FactSet<sup>&reg;</sup></b>
            <br />
            <br />
            The FactSet Connector automatically exports native PA reports or can set up FactSet
            Batcher to produce high-volume datasets. Showing attribution, characteristics, and
            other analytics data in your client reports has never been this easy. Assette has
            worked with FactSet since 2007.
            <br />
            <br />
            <b>BondEdge<sup>&reg;</sup></b>
            <br />
            <br />
            Assette's pre-built application retrieves data from standard Excel-based reports
            produced by BondEdge. Displaying fixed income analytics data in your client reports
            just became easy. Assette has been working with BondEdge since 2005.
            <br />
            <br />
            <b>Moxy<sup>&reg;</sup></b>
            <br />
            <br />
            Assette’s pre-built application captures target data from a native Moxy report so
            you can easily show actual-versus-target allocation information to your clients.
            Assette has been working with Moxy since 2012.
            <br />
            <br />
            <b>ProxyEdge<sup>&reg;</sup> by Broadridge</b>
            <br />
            <br />
            Assette’s pre-built application extracts all your proxy voting details from a native
            ProxyEdge report. You define the report once in ProxyEdge, and then run it each
            month or quarter and upload the resulting Excel file to Assette. Assette automatically
            pulls this data into your client reports so the proxy information looks professional
            and consistent with other reports you send to clients. With Assette, there is no
            more manually combining proxy data with the rest of your client reports. Assette
            has been working with ProxyEdge since 2013.
            <br />
            <br />
            <b>Other Information</b>
            <br />
            <br />
            Assette lets you easily incorporate rich content to create client communications
            filled with insights:
            <br />
            <ul class="description_bulletpoints">
                <li><b>Buy/Sell Rationale</b>—Tell clients your reasons for purchasing and selling securities.
                    Assette generates the list of purchases and sales across all accounts. You simply
                    provide the reasons. Assette automatically shows the appropriate reasons in the
                    right accounts, based on actual holdings. </li>
                <li><b>Company Descriptions</b>—Show your clients a description of their top holdings.
                    Type in a short description for each company, and Assette will automatically display
                    the descriptions based on actual account holdings. </li>
                <li><b>Sector Rationale</b>—Provide insight into your reasons for holding certain sectors.
                    You don’t need to worry about which account holds which sectors. Simply provide
                    reasons for all sectors held, and Assette will display the information based on
                    actual sectors held in accounts. </li>
            </ul>
            <br />
            That’s not all, Assette makes it easy to update content ranging from firm updates
            to investment process to market perspectives – there is no limit to the insights
            and stories you can incorporate into client communications. You use PowerPoint to
            create and house this content within Assette applications. Visit our <a class="lnkblue"
                href="investment-reporting-software.aspx">products</a> page to learn how Assette
            enables you to go beyond charts and graphs to create client communications filled
            with insights and investment stories.
        </div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
