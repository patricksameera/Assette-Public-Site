<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="why-assette.aspx.cs" Inherits="Assette.Web.PublicSite.why_assette"
    MasterPageFile="AssetteMaterPage.Master" Title="Why Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            Go beyond charts and graphs; deliver insight and investment stories. Our 60-day
            unconditional money back guarantee, the "Assette Promise", takes the risk out of
            the equation.
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
            <span class="other_topic">Why Assette?</span>
            <br />
            <br />
            <b>A focus on clients helps you grow your business</b><br />
            By making client communications easy and fast, Assette frees you to turn your attention
            to your clients. When you’re clearly communicating how you help clients achieve
            their goals, you’re enhancing relationships. Move beyond the mundane and deliver
            stunning client communications with engaging content, accurate information and a
            new level of value to your clients.
            <br />
            <br />
            <b>No need for time-consuming, expensive software installation or hardware.</b><br />
            Assette is cloud-based. This means it's fully hosted and supported by Assette; you
            don't need to buy hardware or install, customize, and maintain software on your
            network. And data privacy is ensured by the latest security protection. Assette
            application’s enable you to create stunning client communications, customized to
            convey the unique value of your investment management firm.
            <br />
            <br />
            <b>No need to explain your business to us</b><br />
            Founded by investment management firm veterans, Assette understands your client
            reporting needs. Unlike many other vendors, Assette serves no other industries.
            Your needs are our top priority.
            <br />
            <br />
            <b>No wasting time getting help</b><br />
            Our software is easy to learn and use. Together with our commitment to keeping our
            systems up 24/7, which includes proactively-monitoring our software, this means
            you'll rarely need to contact us.
            <br />
            <br />
            When you need help, Assette is there for you. The firm's commitment to client service
            includes:
            <ul class="description_bulletpoints">
                <li>Responding to issues within 15 minutes of inquiry during NYSE business hours</li>
                <li>Closing service cases only after the client has verified complete satisfaction with
                    the resolution </li>
                <li>Following up on closed service cases to address any additional concerns </li>
                <li>Analyzing the root cause of each issue to prevent it from recurring</li></ul>
            <br />
            <b>No need for time-consuming, expensive software installation or hardware</b><br />
            Assette's software is cloud-based—meaning it's fully hosted and supported by Assette.
            You don't need to buy hardware or install, customize, and maintain software on your
            network. Assette's pre-built solutions easily meet the unique client communications
            needs of each investment management firm.
            <br />
            <br />
            <b>Data that's safeguarded to the satisfaction of industry leaders</b><br />
            When you partner with Assette, your information is protected by a company that has
            won the trust of major investment firms for its ability to safeguard data through
            superior technology, facilities, and people. Assette houses its systems in SOC 2
            (SAS 70) certified data centers used by large financial services companies. Your
            data is safe behind multiple layers of firewalls and state-of-the-art security systems
            that constantly monitor Assette's network.
            <br />
            <br />
            <b>A trusted partner</b><br />
            Assette has earned the investment management industry's trust for providing innovative
            client communications solutions since its founding in 1998. You can rely on Assette
            as your partner.</div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
