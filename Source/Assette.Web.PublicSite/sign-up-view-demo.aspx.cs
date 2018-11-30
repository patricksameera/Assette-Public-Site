using System;
using System.Web;
using System.Web.UI;

namespace Assette.Web.PublicSite
{
    public partial class sign_up_view_demo : ClientBasePage
    {
        string product = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            string videoKey = HttpUtility.UrlDecode(Request.QueryString["videokey"]);
            product = HttpUtility.UrlDecode(Request.QueryString["product"]);
            string time = HttpUtility.UrlDecode(Request.QueryString["time"]);

            demo_product.InnerHtml = "&nbsp;&nbsp;" + product;
            demo_time.InnerHtml = "Thank you for your interest in Assette. Please complete the information below and click 'Submit' to watch the demo, which is only <b>" + time + "</b> in length. You can watch the entire demo at once or watch individual segments – the choice is yours.";
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
            string pageTitle = "Watch Live Demo - " + product + " | Form";

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