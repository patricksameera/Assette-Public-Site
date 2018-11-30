using System;
using System.Web;
using System.Web.Script.Serialization;

namespace Assette.Web.PublicSite
{
    public partial class product_standard_reports_fees : ClientBasePage
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
                string CheckUser = System.Configuration.ConfigurationManager.AppSettings["ShowEasyPricingCTA"];

                if (CheckUser == "1")
                {
                    string email = HttpContext.Current.Session["Email"].ToString();
                    string rtnValue = GetUserByEmail(email);

                    if (rtnValue != "")
                    {
                        JavaScriptSerializer serializer = new JavaScriptSerializer();
                        dynamic obj = serializer.Deserialize<dynamic>(rtnValue);

                        if (obj["properties"]["firm_aum_tier"]["value"] == "Less than $500M" || obj["properties"]["firm_aum_tier"]["value"] == "$500M - $1B")
                        {
                            standardParicingCTA.Visible = true;
                        }
                        else
                        {
                            standardParicingCTA.Visible = false;
                        }
                    }
                    else
                    {
                        standardParicingCTA.Visible = false;
                    }
                }
                else
                {
                    standardParicingCTA.Visible = false;
                }
            }
        }
    }
}