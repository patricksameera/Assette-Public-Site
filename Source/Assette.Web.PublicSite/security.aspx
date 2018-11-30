<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="security.aspx.cs" Inherits="Assette.Web.PublicSite.security"
    MasterPageFile="AssetteMaterPage.Master" Title="Security | Assette" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            Assette security conforms to standards set by publicly traded investment management
            firms such as SEI, Waddell & Reed, and Boston Private Bank & Trust Company.
        </div>
        <div class="other_top_right">
            <img src="images/technology_banner.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="510" height="300" />
        </div>
    </div>
    <div class="other_bellow">
        <div class="other_bellow_left">
        </div>
        <div class="other_bellow_right">
            <span class="other_topic">Security</span>
            <br />
            <br />
            Your clients trust you with data as well as money. To maintain this trust—and to
            meet data protection regulations—you must partner with a client communications software
            provider that meets the highest security standards.
            <br />
            <br />
            Assette security conforms to standards set by publicly traded investment management
            firms. Assette safeguards your data by using multiple security components:
            <br />
            <ul class="description_bulletpoints">
                <li><b>Secure data centers:</b> Assette's primary data center is located at a SOC 2
                    (formerly SAS 70) certified facility that meets stringent operational standards.
                    Assette's secondary data center is also an SOC 2-certified facility used by leading
                    financial services firms. Both data centers require multiple palm scans for entry
                    and feature 24-7 security monitoring.</li>
                <li><b>Firewalls:</b> Multiple layers of enterprise-class firewalls guard Assette's
                    networks against known and unknown attacks. The perimeter firewalls are of different
                    brands than internal firewalls, and a protocol allowed in through one layer of firewalls
                    is prevented from entering through another layer.</li>
                <li><b>Intrusion detection:</b> Intrusion detection systems (IDS) continuously scrutinize
                    Assette networks for suspicious activity. Round-the-clock IDS monitoring and management
                    keep Assette networks safe.</li><li><b>Vulnerability scanning:</b> Routine vulnerability
                        assessments are conducted on all Assette networks. These penetration scans allow
                        Assette to proactively fix potential problems.</li>
                <li><b>Virus scanning:</b> Powerful anti-virus software protects all Assette servers.</li><li>
                    <b>Employee screening:</b> All Assette employees must undergo stringent background
                    checks. Employees must sign a confidentiality agreement and adhere to a strict code
                    of ethics.</li>
            </ul>
            <br />
            <div style="padding-left: 220px;">
                <img src="images/security_diagram.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" alt="" width="283" height="666" /></div>
        </div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>" style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
