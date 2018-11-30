using System;
using System.Web;
using System.Web.UI;

namespace Assette.Web.PublicSite
{
    public partial class sign_up_easy_pricing : ClientBasePage
    {
        string product = string.Empty;
        string title = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            product = HttpUtility.UrlDecode(Request.QueryString["product"]);
            title = HttpUtility.UrlDecode(Request.QueryString["title"]);

            demo_product.InnerHtml = title;
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
            string description = "N/A";
            string heard = "N/A";
            string pageTitle = "Pricing - " + product + " | Form";

            // create user locally
            CreateUserLocally(first_name, last_name, job_function, email, firm_name, title, firm_aum, firm_type);

            bool blnRet = CreateNewContactInHubSpot(first_name, last_name, email, title, job_function, firm_name, firm_aum, firm_type, description, pageTitle, heard);

            if (blnRet == true)
            {
                CreateCookie(email);

                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "fancyboxclosescript", "<script type='text/javascript'>window.top.setRegistrationTrue();parent.$.fancybox.close();</script>", false);
            }        
        }
    }
}