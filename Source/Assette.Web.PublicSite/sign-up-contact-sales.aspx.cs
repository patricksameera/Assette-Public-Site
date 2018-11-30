using System;
using System.Web;
using System.Web.UI;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite
{
    public partial class sign_up_contact_sales : ClientBasePage
    {
        string product = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            product = HttpUtility.UrlDecode(Request.QueryString["product"]);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string first_name = txtFirstName.Text.Trim();
            string last_name = txtLastName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string title = txtTitle.Text.Trim();
            string job_function = drpJobFunction.SelectedValue;
            string firm_name = txtFirmName.Text.Trim();
            string firm_aum = drpFirmAum.SelectedValue;
            string firm_type = drpFirmType.SelectedValue;
            string description = txtDescription.Text.Trim();
            if (description == "Anything in particular you want to discuss with us?")
            {
                description = "Not Provided";
            }
            string heard = txtHeard.Text.Trim();
            if (heard == "How did you hear about Assette?")
            {
                heard = "Not Provided";
            }
            string pageTitle = "Contact Assette - " + product + " | Form";

            // create user locally
            CreateUserLocally(first_name, last_name, job_function, email, firm_name, title, firm_aum, firm_type);

            //bool blnRet = true;
            bool blnRet = CreateNewContactInHubSpot(first_name, last_name, email, title, job_function, firm_name, firm_aum, firm_type, description, pageTitle, heard);

            if (blnRet == true)
            {
                CreateCookie(email);

                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "fancyboxclosescript", "<script type='text/javascript'>setRegistrationTrue();contactSalesSuccess();</script>", false);
            } 
        }
    }
}