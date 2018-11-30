using System;
using System.Web.UI;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite.admin
{
    public partial class testimonials : System.Web.UI.Page
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                GetAllTestimonials();

                if (Id != null)
                {
                    DeleteTestimonial(Id);
                }
            }
        }

        public void GetAllTestimonials()
        {
            var proxy = new BusinessProxy();

            lstvwTestimonials.DataSource = proxy.GetAllTestimonials();
            lstvwTestimonials.DataBind();
        }

        public void DeleteTestimonial(string Id)
        {
            var proxy = new BusinessProxy();

            proxy.DeleteTestimonial(Id);

            GetAllTestimonials();
        }
    }
}