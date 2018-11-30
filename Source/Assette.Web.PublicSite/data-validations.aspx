<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="data-validations.aspx.cs"
    Inherits="Assette.Web.PublicSite.data_validations" MasterPageFile="AssetteMaterPage.Master"
    Title="Data Checks | Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            Over 250 fully automated data checks to ensure error-free client communications.
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
            <span class="other_topic">Automatic Data Checks</span>
            <br />
            <br />
            Professional-looking client communications don’t mean much if the content is full
            of errors. When you send data to Assette, it goes through over 250 automated checks
            to ensure consistency and error-proof integration.
            <br />
            <br />
            These checks look for everything from missing prices to discrepancies in performance
            intervals. Data is cross-referenced to make sure all the data necessary to create
            accurate and complete client communications has reached Assette.
            <br />
            <br />
            Data checks alert you to data errors so you can fix them before your clients see
            them, saving you time, frustration and potential client embarrassment.
            <br />
            <br />
            If only a few accounts have errors, Assette pinpoints these so there's no delay
            in producing material for accounts with no errors. Once you fix the data in source
            systems, simply re-publish data for the affected accounts, no time is wasted and
            reports can be easily completed.<br />
            <br />
            See below for a summary of Assette data checks.
        </div>
        <div class="other_bellow_right" style="display: inline;">
            <table>
                <tbody>
                    <tr>
                        <td class="ft_td_header11">
                            <div style="text-align: left;">
                                <b>Category</b></div>
                        </td>
                        <td class="ft_td_spacer">
                        </td>
                        <td class="ft_td_header2">
                            <b>Overview</b>
                        </td>
                        <td class="ft_td_spacer">
                        </td>
                        <td class="ft_td_header33">
                            <b>Examples</b>
                        </td>
                    </tr>
                    <tr>
                        <td class="ft_td_data_step_top">
                            <b>File Structure Checks</b>
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby_top ft_td_data_price_color3">
                            Verifies that the data files sent to Assette are valid and formatted correctly.
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby_1 ft_td_data_price_color3" style="text-align: left !important;">
                            <ul>
                                <li><span class="ft_td_data_step_small">Are the file names in the correct formats?</span></li>
                                <li><span class="ft_td_data_step_small">Are the file dates correct?</span></li>
                                <li><span class="ft_td_data_step_small">Are the files received at Assette consistent
                                    with all the records that were in the file when you started sending the files?</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="ft_td_data_step_top">
                            <b>Data Completeness</b>
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby_top ft_td_data_price_color3">
                            Verifies that the data in each file is complete.
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby_1 ft_td_data_price_color3" style="text-align: left !important;">
                            <ul>
                                <li><span class="ft_td_data_step_small">Are there any accounts missing an inception
                                    date?</span></li>
                                <li><span class="ft_td_data_step_small">Are any extracts empty?</span></li>
                                <li><span class="ft_td_data_step_small">Are date fields in the correct format?</span></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td class="ft_td_data_step_top">
                            <b>Referential Integrity</b>
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby_top ft_td_data_price_color3">
                            Cross checks data among all files and verifies that a complete set of data is available
                            for all accounts.
                        </td>
                        <td>
                        </td>
                        <td class="ft_td_data_doneby_1 ft_td_data_price_color3" style="text-align: left !important;">
                            <ul>
                                <li><span class="ft_td_data_step_small">Are there holdings for all accounts?</span></li>
                                <li><span class="ft_td_data_step_small">Are there performance factors/intervals for
                                    all accounts?</span></li>
                                <li><span class="ft_td_data_step_small">Are all securities held across all accounts
                                    available in the security master?</span></li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br />
            With Assette, clean data powers professional-looking, insightful client communications.
        </div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
