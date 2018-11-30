<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="onboarding.aspx.cs" Inherits="Assette.Web.PublicSite.onboarding"
    MasterPageFile="AssetteMaterPage.Master" Title="Onboarding | Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            Get started in days, not weeks, with no hardware to buy or software to install.
            <b>You won't even need help from your IT staff.</b>
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
            <span class="other_topic">Onboarding</span>
            <br />
            <br />
            Assette is a true cloud-based solution that will have you up and running quickly.
            <br />
            <br />
            Assette is built for the investment management industry and provisioning Assette
            is fully automated. A simple screen lets you configure Assette to suit your exact
            needs. You are ready to put the power of Assette to work immediately.
            <br />
            <br />
            Assette provides all the interfaces necessary to send data from your portfolio accounting
            and analytics systems directly into your client communications; updating your insights
            and market perspectives becomes simple and error-free.
            <br />
            <br />
            Best of all, there is no work for your already-stretched-too-thin IT department.
            With Assette, everything is pre-built and ready to go.
            <br />
            <br />
            Assette applications are easy to learn and use, really. You can expect onboarding
            to be quick and easy, as the steps outlined below show. Our Client Service team,
            the best in the industry, is always ready to help and make sure onboarding to Assette
            is smooth and easy.</div>
        <div class="other_bellow_left">
        </div>
        <div class="other_bellow_right">
            <table>
                <tbody>
                    <tr>
                        <td class="ft_td_header1">
                            <div style="text-align: left;">
                                <b>Step</b></div>
                        </td>
                        <td class="ft_td_spacer">
                        </td>
                        <td class="ft_td_header2">
                            <b>Done by</b>
                        </td>
                        <td class="ft_td_spacer">
                        </td>
                        <td class="ft_td_header3">
                            <b>Time</b>
                        </td>
                    </tr>
                    <tr>
                        <td class="ft_td_data_step">
                            <b>1). Setup application</b><br />
                            <br />
                            <span class="ft_td_data_step_small">Provisioning the application is fully automated
                                at Assette. Once you sign the agreements, we enter a few pieces of information to
                                our onboarding tool, and the Assette application is setup for you instantly.</span>
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            Assette
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            1 Day
                        </td>
                    </tr>
                    <tr>
                        <td class="ft_td_data_step">
                            <b>2). Send data</b><br />
                            <br />
                            <span class="ft_td_data_step_small">First, you setup the Connectors. Setting up data
                                connectors takes less than 30 minutes – our innovative connectors automatically
                                discover the settings needed to interface with your systems.
                                <br />
                                <br />
                                Depending on the number of accounts you have, the data transfer process will take
                                anywhere from 15 minutes to a couple of hours –plan on about 1hr for 1,000 accounts.</span>
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            You
                            <br />
                            <br />
                            We start with an online screen-sharing session to guide you through the steps.
                            <br />
                            <br />
                            We are ready to help anytime you need it.
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            About 30 minutes.
                            <br />
                            <br />
                            Once the process to send data starts, there is no manual work – it is fully automated.
                        </td>
                    </tr>
                    <tr>
                        <td class="ft_td_data_step">
                            <b>3). Plan content layouts and begin entering insights</b><br />
                            <br />
                            <span class="ft_td_data_step_small">Use our Template Map as a starting point to describe
                                the information needs of different client types, and map out content to fill those
                                needs. The completed Template Map will then provide the outline for your working
                                templates.
                                <br />
                                <br />
                                If you already know the exact content you want to provide, then you already have
                                your own completed 'Template Map'.</span>
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            You
                            <br />
                            <br />
                            We kick-off this step with a 1 hour training session. We are here to help anytime
                            you need it.
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            A few hours or a few days, depending on how you work.
                        </td>
                    </tr>
                    <tr>
                        <td class="ft_td_data_step">
                            <b>4). Testing with your data</b><br />
                            <br />
                            <span class="ft_td_data_step_small">This step starts when we receive data from you and
                                runs in parallel with Step 3 above.
                                <br />
                                <br />
                                Once we receive the first run of data, we execute a comparative test to ensure accuracy.
                                <br />
                                <br />
                                Even the comparison process is automated and overseen by an experienced Assette
                                quality assurance engineer.</span>
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            Assette
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            A one-time event. A few hours or days, depending on the amount of testing to be
                            done.
                        </td>
                    </tr>
                    <tr>
                        <td class="ft_td_data_step">
                            <b>5). Data testing is complete and Assette is now live!</b><br />
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                        </td>
                    </tr>
                    <tr>
                        <td class="ft_td_data_step">
                            <b>6). Create templates and verify output</b><br />
                            <br />
                            <span class="ft_td_data_step_small">You can now start to create working templates. Assette
                                provides designs that you can use as-is or modify as you wish.
                                <br />
                                <br />
                                If you already have templates for sales pitch books, client books and quarterly
                                reports in PowerPoint, you can simply upload them to Assette and insert Assette’s
                                content elements.
                                <br />
                                <br />
                                Best of all, the report editor in Assette is Microsoft PowerPoint, so creating templates
                                is simple no matter which route you take.</span>
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            You
                            <br />
                            <br />
                            We are here to help anytime you need it.
                            <br />
                            <br />
                            We start this step with a 1 hour training session.
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            Hours or days depending on your firm's work method.
                        </td>
                    </tr>
                    <tr>
                        <td class="ft_td_data_step">
                            <b>7). Delight your clients!</b><br />
                            <br />
                            <span class="ft_td_data_step_small">Send beautiful client communications that are full
                                of insights and clearly show the value you provide.</span>
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            You
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby ft_td_data_price_color3">
                            Overall, it usually takes about 30-45 days to be fully up and running with Assette.
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="other_bellow_left">
        </div>
        <div class="other_bellow_right">
            <b>Remember, the Assette Promise</b> – We stand behind our products and services.
            We promise to delight you through onboarding and beyond with our <b>60-day unconditional
                money-back guarantee.</b>
            <br />
            <br />
            There is no fine print – <b>If you’re not happy after 60-days of going live, we give
                your money back. It’s that simple!</b>
            <br />
            <br />
            So, there is really no risk with Assette.
        </div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
