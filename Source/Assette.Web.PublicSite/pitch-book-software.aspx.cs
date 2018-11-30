using System;
using System.Web.UI.WebControls;

namespace Assette.Web.PublicSite
{
    public partial class pitch_book_software : ClientBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkpresentations";

            AddMetaTag("description", "Assette quickly creates PowerPoint pitch books and client presentations with data from Advent, Schwab PortfolioCenter, FactSet®, BondEdge®, and Excel®.");
            AddMetaTag("keywords", "pitch book software, investment presentation software, investment PowerPoint presentations, pitch book presentations");

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