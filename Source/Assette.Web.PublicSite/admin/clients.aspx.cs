using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite.admin
{
    public partial class clients : System.Web.UI.Page
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                GetAllClients();

                if (Id != null)
                {
                    DeleteClient(Id);
                }
            }
        }

        public void GetAllClients()
        {
            var proxy = new BusinessProxy();

            lstvwClients.DataSource = proxy.GetAllClients();
            lstvwClients.DataBind();
        }

        public void DeleteClient(string Id)
        {
            var proxy = new BusinessProxy();

            proxy.DeleteClient(Id);

            GetAllClients();
        }
    }
}