using System;
using System.Web.UI.WebControls;

namespace Assette.Web.PublicSite
{
    public partial class portfolio_accounting_system_reporting : ClientBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkeasyreports";

            AddMetaTag("description", "Assette easily creates professional client reports and presentations by interfacing with Advent and Schwab portfolio accounting systems.");
            AddMetaTag("keywords", "portfolio accounting system, portfolio accounting systems");

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