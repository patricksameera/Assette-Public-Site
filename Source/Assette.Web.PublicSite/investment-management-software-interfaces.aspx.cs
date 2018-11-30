using System;
using System.Web.UI.WebControls;

namespace Assette.Web.PublicSite
{
    public partial class investment_management_software_interfaces : ClientBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkdatainterface";

            AddMetaTag("description", "Assette works easily with Advent Axys®, APX®,Advent OnDemand®, Schwab PortfolioCenter®, FactSet®, BondEdge®, and Excel®.");
            AddMetaTag("keywords", "investment management software");
        }
    }
}