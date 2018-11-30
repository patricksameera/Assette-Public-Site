using System;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite
{
    public partial class _default : ClientBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkdefault";

            // for testing purpose
            //GenerateApplicationErrorForTesting();

            GetAllClients();
            GetTopRandomTestimonial();
            GetLatestBlogEntry();

            AddMetaTag("description", "Get Assette to easily create PowerPoint pitch books, client reports, and a client portal. Works with Advent, PortfolioCenter, FactSet and BondEdge.");
            AddMetaTag("keywords", "client reporting software, Assette");
        }

        public void GetAllClients()
        {
            var proxy = new BusinessProxy();

            lstvwClients.DataSource = proxy.GetAllClientDetailsRandom();
            lstvwClients.DataBind();

            lstvwClientsScroll.DataSource = proxy.GetAllClientDetailsRandomScroll();
            lstvwClientsScroll.DataBind();
        }

        public void GetTopRandomTestimonial()
        {
            var proxy = new BusinessProxy();

            lstvwTestiminial.DataSource = proxy.GetTopRandomTestimonial();
            lstvwTestiminial.DataBind();
        }

        public void GetLatestBlogEntry()
        {
            var proxy = new BusinessProxy();

            lstvwBlogEntry.DataSource = proxy.GetLatestBlogEntry();
            lstvwBlogEntry.DataBind();
        }
    }
}