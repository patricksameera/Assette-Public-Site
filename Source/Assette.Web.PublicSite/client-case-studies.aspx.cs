using System;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite
{
    public partial class client_case_studies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkcasestudies";

            GetAllCaseStudies();
            GetRandomTestimonials();
        }

        public void GetAllCaseStudies()
        {
            var proxy = new BusinessProxy();

            lstvwCaseStudies.DataSource = proxy.GetAllActiveCaseStudies();
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