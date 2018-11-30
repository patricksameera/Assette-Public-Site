using System;
using System.Web;

namespace Assette.Web.PublicSite
{
    public partial class product_easy_reports_fees : System.Web.UI.Page
    {
        string product = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            product = HttpUtility.UrlDecode(Request.QueryString["product"]);
            this.Title = "Pricing – " + product + " | Content";

            // show easy pricing action button
            if (Session["Email"] == null)
            {
                Response.Redirect("default.aspx");
            }
            else
            {

            }
        }
    }
}