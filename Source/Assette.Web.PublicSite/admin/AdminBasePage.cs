using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assette.Web.PublicSite.admin
{
    public class AdminBasePage : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            if (Session["AdminUserName"] == null)
            {
                Response.Redirect("../admin/login.aspx");
            }

            base.OnLoad(e);
        }
    }
}