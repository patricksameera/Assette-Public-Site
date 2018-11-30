using System;
using System.Web.UI.WebControls;

namespace Assette.Web.PublicSite
{
    public partial class portfolio_reporting_software : ClientBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkreports";

            AddMetaTag("description", "Easily create PDFclient reports and presentations from Advent, Schwab PortfolioCenter®, FactSet®, BondEdge®, and Excel®.");
            AddMetaTag("keywords", "portfolio reporting software, client reporting tool");
            // show pad-lock
            ShowPricingPadLock();
        }

        protected void ShowPricingPadLock()
        {
            // show easy pricing action button
            if (Session["Email"] == null)
            {
                pricing_padlock.Visible = true;
            }
            else
            {
                pricing_padlock.Visible = false;
            }
        }
    }
}