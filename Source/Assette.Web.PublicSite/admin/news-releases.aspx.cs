using System;
using System.Web.UI;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite.admin
{
    public partial class news_releases : System.Web.UI.Page
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                GetAllNewsReleases();

                if (Id != null)
                {
                    DeletenewsRelease(Id);
                }
            }
        }

        public void GetAllNewsReleases()
        {
            var proxy = new BusinessProxy();

            lstvwNewsReleases.DataSource = proxy.GetAllNewsReleases();
            lstvwNewsReleases.DataBind();
        }

        public void DeletenewsRelease(string Id)
        {
            var proxy = new BusinessProxy();

            proxy.DeletenewsRelease(Id);

            GetAllNewsReleases();
        }
    }
}