using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace Assette.Web.PublicSite
{
    public partial class sign_up_contact_sales_registered : ClientBasePage
    {
        string product = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            product = HttpUtility.UrlDecode(Request.QueryString["product"]);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string cookieName = System.Configuration.ConfigurationManager.AppSettings["UserCookieName"];

            HttpCookie newCookie = new HttpCookie(cookieName);
            newCookie = HttpContext.Current.Request.Cookies[cookieName];
            string email = newCookie.Value;

            string rtnValue = GetUserByEmail(email);

            if (rtnValue != "")
            {
                JavaScriptSerializer serializer = new JavaScriptSerializer();
                dynamic obj = serializer.Deserialize<dynamic>(rtnValue);

                string first_name = obj["properties"]["firstname"]["value"];
                string last_name = obj["properties"]["lastname"]["value"];
                string title = obj["properties"]["title"]["value"];
                string job_function = obj["properties"]["job_function"]["value"];
                string firm_name = obj["properties"]["firm_name"]["value"];
                string firm_aum = obj["properties"]["firm_aum"]["value"];
                string firm_type = obj["properties"]["firm_type"]["value"];
                string description = txtDescription.Text;
                string heard = txtHeard.Text;
                string pageTitle = "Contact Assette - " + product + " | Form";

                // create user locally
                CreateUserLocally(first_name, last_name, job_function, email, firm_name, title, firm_aum, firm_type);

                //bool blnRet = true;
                bool blnRet = CreateNewContactInHubSpot(first_name, last_name, email, title, job_function, firm_name, firm_aum, firm_type, description, pageTitle, heard);
                
                if (blnRet == true)
                {
                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "fancyboxclosescript", "<script type='text/javascript'>setRegistrationTrue();contactSalesSuccess();</script>", false);
                }
            }
            else
            {
                //ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "fancyboxclosescript", "<script type='text/javascript'>contactSalesSuccess();</script>", false);
            }          
        }
    }
}