using System;
using System.Web.UI.WebControls;

namespace Assette.Web.PublicSite
{
    public partial class portfolio_management_system : ClientBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkportal";

            AddMetaTag("description", "Assette provides your clients with quick access to information by interfacing with portfolio management systems—Advent, Schwab PortfolioCenter®.");
            AddMetaTag("keywords", "portfolio management system, portfolio management systems");

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