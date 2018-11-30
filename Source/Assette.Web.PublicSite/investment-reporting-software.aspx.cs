using System;
using System.Web.UI.WebControls;

namespace Assette.Web.PublicSite
{
    public partial class investment_reporting_software : ClientBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkproduct";

            AddMetaTag("description", "Designed for mid-market institutional investment firms, Assette makes investment performance reporting easy. Works with Advent, Schwab PortfolioCenter, BondEdge®, FactSet®.");
            AddMetaTag("keywords", "investment reporting software, investment performance reporting software");
        }
    }
}