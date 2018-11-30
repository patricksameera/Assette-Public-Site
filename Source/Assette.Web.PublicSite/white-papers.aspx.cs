using System;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite
{
    public partial class white_papers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkwhite";

            GetAllNewsReleases();
        }

        public void GetAllNewsReleases()
        {
            var proxy = new BusinessProxy();

            lstvwNewsReleases.DataSource = proxy.GetAllActiveNewsReleases();
            lstvwNewsReleases.DataBind();
        }
    }
}