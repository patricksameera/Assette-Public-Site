using System;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite.admin
{
    public partial class case_studies : System.Web.UI.Page
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                GetAllCaseStudies();

                if (Id != null)
                {
                    DeleteCaseStudy(Id);
                }
            }
        }

        public void GetAllCaseStudies()
        {
            var proxy = new BusinessProxy();

            lstvwCaseStudies.DataSource = proxy.GetAllCaseStudies();
            lstvwCaseStudies.DataBind();
        }

        public void DeleteCaseStudy(string Id)
        {
            var proxy = new BusinessProxy();

            proxy.DeleteCaseStudy(Id);

            GetAllCaseStudies();
        }
    }
}