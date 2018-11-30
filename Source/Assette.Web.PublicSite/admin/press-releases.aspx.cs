using System;
using System.Web.UI;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite.admin
{
    public partial class press_releases : System.Web.UI.Page
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                GetAllPressReleases();

                if (Id != null)
                {
                    DeletePressRelease(Id);
                }
            }
        }

        public void GetAllPressReleases()
        {
            var proxy = new BusinessProxy();

            lstvwPressReleases.DataSource = proxy.GetAllPressReleases();
            lstvwPressReleases.DataBind();
        }

        public void DeletePressRelease(string Id)
        {
            var proxy = new BusinessProxy();

            proxy.DeletePressRelease(Id);

            GetAllPressReleases();
        }
    }
}