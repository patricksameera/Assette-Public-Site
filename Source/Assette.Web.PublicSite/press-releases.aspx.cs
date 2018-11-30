using System;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite
{
    public partial class press_releases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnknews";

            GetAllPressReleases();
            GetRandomPressReleaseQuotes();
        }

        public void GetAllPressReleases()
        {
            var proxy = new BusinessProxy();

            lstvwPressReleases.DataSource = proxy.GetAllActivePressReleases();
            lstvwPressReleases.DataBind();
        }

        public void GetRandomPressReleaseQuotes()
        {
            var proxy = new BusinessProxy();

            lstvwPressReleaseQuotes.DataSource = proxy.GetRandomPressReleaseQuotes();
            lstvwPressReleaseQuotes.DataBind();
        }
    }
}