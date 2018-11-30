<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="people.aspx.cs" Inherits="Assette.Web.PublicSite.people"
    MasterPageFile="AssetteMaterPage.Master" Title="Assette | History and People" %>

<asp:Content runat="server" ID="HomeContent" ContentPlaceHolderID="BodyPlaceHolder">
    <div class="other_top">
        <div class="other_top_left">
            Fifteen years of proven experience. Funded by all-stars in the investment management
            industry.
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
            <span class="other_topic">The Assette Story</span>
            <br />
            <br />
            Assette was founded in 1998 to dramatically improve the way institutional investment
            management firms communicate with their clients. Two industry veterans at <a class="lnkblue"
                target="_blank" href="http://www.frontiercap.com/"><b>Frontier Capital Management Company</b></a>
            realized that, by leveraging the power of technology, marketing, client service
            and productivity could be dramatically improved, while freeing firms from their
            reliance on manual efforts to effectively communicate with clients.
            <br />
            <br />
            Based on this vision, Assette was created and backed with funding from an all-star
            group of prominent individuals in the investment management industry. Assette investors
            include:
            <br />
            <ul>
                <li><a class="lnkblue" target="_blank" href="http://www.linkedin.com/pub/peter-bennett/8/a92/6">
                    Peter Bennett</a>, former Chief Investment Officer of State Street Research and
                    Management</li>
                <li><a class="lnkblue" target="_blank" href="http://www.linkedin.com/pub/grace-fey/8/9b3/b3">
                    Grace Fey</a>, former EVP and Director at Frontier Capital</li>
                <li>J. David Wimberly, Chairman Emeritus at Frontier Capital</li>
                <li><a class="lnkblue" target="_blank" href="http://www.linkedin.com/pub/mike-cavarretta/40/b38/175">
                    Michael Cavarretta</a>, Chairman of Frontier Capital</li>
                <li>James Colgan, Portfolio Manager at Frontier Capital</li>
                <li><a class="lnkblue" target="_blank" href="http://www.linkedin.com/pub/nalin-kulatilaka/0/a4a/684">
                    Nalin Kulatilaka</a>, Professor of Finance at Boston University</li>
                <li><a class="lnkblue" target="_blank" href="http://www.linkedin.com/pub/mike-barry/1/54/248">
                    Michael Barry</a>, General Partner of Barrier Island Capital</li>
            </ul>
            <br />
            Assette is run by experienced professionals and guided by a board of directors with
            extensive experience in the investment management industry.
            <br />
            <br />
            <b id="Mahanama" style="color: #707070;">Thusith I. Mahanama</b><br />
            CEO
            <br />
            <br />
            Mr. Mahanama, Assette's co-founder and board member, is responsible for the company's
            overall strategic direction and marketing plan. Mr. Mahanama brings over 15 years
            of technology management experience to Assette. Before founding Assette, he was
            responsible for managing information technology at Frontier Capital Management Company
            in Boston, which manages over $10 billion in assets for institutions. At Frontier,
            Mr. Mahanama created one of the industry's first online client communications systems,
            which provided daily portfolio data to clients.
            <br />
            <br />
            Mr. Mahanama has a B.S. in Information Systems and Marketing from the University
            of Wisconsin-Superior and an M.S. in Management Information Systems from Boston
            University's Graduate School of Management. Mr. Mahanama is also a member of the
            Boston Security Analysts Society.
            <br />
            <br />
            <b id="Cavarretta" style="color: #707070;">Michael Cavarretta</b><br />
            Board Member
            <br />
            <br />
            Mr. Cavarretta, a chartered financial analyst, brings hands-on asset management
            expertise to Assette’s board of directors. He is the chairman of Frontier Capital
            Management Company in Boston, which manages over $9 billion in assets. Mr. Cavarretta
            serves as portfolio manager for Frontier Capital Appreciation Portfolios and co-team
            leader for Frontier Research Portfolios. Before joining Frontier, Mr. Cavarretta
            was a financial analyst for General Electric.
            <br />
            <br />
            Mr. Cavarretta holds a B.S. from the University of Maine and an M.B.A from Harvard
            Business School.
            <br />
            <br />
            <b id="Colgan" style="color: #707070;">Jim Colgan</b><br />
            Board Member
            <br />
            <br />
            Mr. Colgan is a technology equity analyst and portfolio manager at Frontier Capital
            Management Company in Boston. Since 2001, he has managed a portion of the firm’s
            $2.5 billion small-to-mid-cap portfolio. Mr. Colgan specializes in creating innovative
            investment ideas, monitoring existing equity holdings, collaborating with sell-side
            analysts, and building quarterly financial models for long-term holdings. He has
            also held management positions at Digital Equipment Corporation and United Technologies
            Corporation.
            <br />
            <br />
            Mr. Colgan holds a B.S. in Mechanical Engineering and Materials Science from the
            University of Connecticut, an M.S. in Manufacturing Engineering from the University
            of Massachusetts, and an M.S. in Mechanical Engineering and an M.B.A. from MIT.
            <br />
            <br />
            <b id="Greata" style="color: #707070;">J. Michael Greata</b><br />
            Board Member
            <br />
            <br />
            Mr. Greata has spent 39 years in the computer systems industry. He is currently
            the president of Opera Systems. Before joining Opera, Mr. Greata was a founder and
            chief technology officer at Apollo Computer (now part of HP). Previously, Mr. Greata
            held positions with PR1ME Computer and Honeywell's minicomputer division. At PR1ME,
            he served as director of software development and director of advanced systems development.
            <br />
            <br />
            Mr. Greata holds a B.S. in Electrical Engineering and an S.M. in Electrical Engineering
            from the Massachusetts Institute of Technology (MIT) in Cambridge, Massachusetts.
            <br />
            <br />
            <b id="Kulatilaka" style="color: #707070;">Nalin Kulatilaka</b>
            <br />
            Board Member
            <br />
            <br />
            A professor of finance at the Boston University School of Management, Professor
            Kulatilaka studies issues of risk management, firm valuation, and real options.
            He serves as the Research Director of Global Mobility Innovations and Insights,
            a multi-university research consortium on mobile communications. Professor Kulatilaka's
            current research examines issues related to the valuation of real options and their
            use in forming an economic foundation for corporate strategy. His book on this topic,
            Real Options: Managing Strategic Investments in an Uncertain World is published
            by Harvard Business School Press. Professor Kulatilaka has published extensively
            in top academic journals as well as influential managerial publications. He has
            received the Association for Investment Management and Research's Graham and Dodd
            Award in recognition of outstanding feature articles published in the Financial
            Analysts Journal. Outside academia, he frequently addresses executive audiences
            and consults for investment banks, corporations, and governments.
            <br />
            <br />
            Professor Kulatilaka received a B.S. in Electrical Engineering from Imperial College,
            London, an S.M. in Decision Sciences from Harvard University, and a Ph.D. in Economics/Finance
            from MIT.
            <br />
            <br />
        </div>
    </div>
    <div class="product_details_scroll_top">
        <a href="#top">
            <img src="images/scroll_top.png?v=<%= ConfigurationSettings.AppSettings["Version"] %>"
                style="float: right;" alt="" width="94" height="29" /></a></div>
</asp:Content>
