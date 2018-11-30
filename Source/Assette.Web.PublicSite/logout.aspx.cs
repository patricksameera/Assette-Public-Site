using System;
using System.Web;

namespace Assette.Web.PublicSite
{
    public partial class log_out : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // clear cookie
            string cookieName = System.Configuration.ConfigurationManager.AppSettings["UserCookieName"];
            Response.Cookies[cookieName].Expires = DateTime.Now.AddDays(-1);

            // clear session
            HttpContext.Current.Session.Abandon();

            // redirect to default page
            Response.Redirect("default.aspx");
        }
    }
}