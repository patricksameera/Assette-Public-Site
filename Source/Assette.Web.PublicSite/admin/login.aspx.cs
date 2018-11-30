using System;
using Assette.Web.PublicSite.Proxy;
using System.Web;

namespace Assette.Web.PublicSite.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var proxy = new BusinessProxy();

            string strUserName = txtUserName.Text.Trim();
            string strPassword = txtPassword.Text.Trim();

            if (proxy.CheckAdminLogin(strUserName, strPassword))
            {
                HttpContext.Current.Session["AdminUserName"] = strUserName;

                Response.Redirect("default.aspx");
            }
            else
            {
                lblError.Text = "Invalid Username/Password";
            }
        }
    }
}