using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite.admin
{
    public partial class press_release_quotes : System.Web.UI.Page
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                GetAllPressReleaseQuotes();

                if (Id != null)
                {
                    DeletePressReleaseQuote(Id);
                }
            }
        }

        public void GetAllPressReleaseQuotes()
        {
            var proxy = new BusinessProxy();

            lstvwPressReleaseQuotes.DataSource = proxy.GetAllActivePressReleaseQuotes();
            lstvwPressReleaseQuotes.DataBind();
        }

        public void DeletePressReleaseQuote(string Id)
        {
            var proxy = new BusinessProxy();

            proxy.DeletePressReleaseQuote(Id);

            GetAllPressReleaseQuotes();
        }
    }
}