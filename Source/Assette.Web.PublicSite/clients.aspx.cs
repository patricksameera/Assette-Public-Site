using System;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite
{
    public partial class clients : ClientBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkclients";

            GetRandomTestimonials();
            GetTop4CaseStudies();
        }

        public void GetTop4CaseStudies()
        {
            var proxy = new BusinessProxy();

            lstvwCaseStudies.DataSource = proxy.GetTop4CaseStudies();
            lstvwCaseStudies.DataBind();
        }

        public void GetRandomTestimonials()
        {
            var proxy = new BusinessProxy();

            lstvwQuotes.DataSource = proxy.GetRandomTestimonials();
            lstvwQuotes.DataBind();
        }
    }
}