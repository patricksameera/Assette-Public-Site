using System;
using System.Web.UI.WebControls;

namespace Assette.Web.PublicSite
{
    public partial class investment_manager_software : ClientBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnktechnology";

            AddMetaTag("description", "Assette quickly creates client reports for investment managers: Software works withAdvent Axys®, APX®,Advent OnDemand®, Schwab PortfolioCenter®, FactSet®, BondEdge®, and Excel®.");
            AddMetaTag("keywords", "investment manager software");
        }
    }
}