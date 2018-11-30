<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Assette.Web.PublicSite.contact"
    MasterPageFile="AssetteMaterPage.Master" Title="Contact Assette | Boston, MA Phone 617-723-6161" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            Assette is in the historic Faneuil Hall Market Place located in the heart of Boston’s
            financial district. Come visit us when you are in the area.
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
            <span class="other_topic">Contact Assette</span>
            <br />
            <br />
            <div class="contact">
                <div class="contact_left">
                    <b>Sales</b><br />
                    <%--877.723.6161 Ext.246<br />--%>
                    <a href="mailto:sales@assette.com">sales@assette.com</a>
                    <br />
                    <br />
                    <b>Client Service</b><br />
                    <a href="mailto:ClientService@assette.com">ClientService@assette.com</a>
                    <br />
                    <br />
                    <b>Accounting</b><br />
                    <a href="mailto:invoices@assette.com">invoices@assette.com</a>
                    <br />
                    <br />
                    <b>Careers</b><br />
                    <a href="mailto:work@assette.com">work@assette.com</a>
                </div>
                <div class="contact_right">
                    <b>General Information</b><br />
                    Assette<br />
                    1 Faneuil Hall, 4th Floor<br />
                    Boston, MA 02109<br />
                    U.S.A.<br />
                    <br />
                    <br />
                    Main Phone: 617.723.6161<br />
                    Toll Free: 877.723.6161<br />
                    Fax: 617.723.6199
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
