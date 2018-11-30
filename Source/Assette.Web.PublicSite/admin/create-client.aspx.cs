using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;
using Assette.Web.PublicSite.Common;

namespace Assette.Web.PublicSite.admin
{
    public partial class create_client : AdminBasePage
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                if (Id != null)
                {
                    GetClient(Id);
                }
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string strName = txtClient.Text.Trim();
            string strAum = txtAum.Text.Trim();
            string strWebUrl = txtWebUrl.Text.Trim();
            string strLogoUrl = txtLogo.Text.Trim();
            string strRank = txtRank.Text.Trim();
            bool boolIsActive = chkIsActive.Checked;
            Guid createdBy = Guid.NewGuid();

            var proxy = new BusinessProxy();

            if (Id != null)
            {
                EntityClient client = proxy.GetClient(Id);

                proxy.UpdateClient(client.Id.ToString(), strName, strAum, strWebUrl, strLogoUrl, strRank, boolIsActive);
            }
            else
            {
                proxy.CreateClient(strName, strAum, strWebUrl, strLogoUrl, strRank, boolIsActive, createdBy);
            }

            /*
            txtClient.Text = "";
            txtAum.Text = "";
            txtWebUrl.Text = "";
            txtLogo.Text = "";
            txtRank.Text = "";
            chkIsActive.Checked = true;*/

            Response.Redirect("clients.aspx");
        }

        public void GetClient(string Id)
        {
            var proxy = new BusinessProxy();
            EntityClient client = proxy.GetClient(Id);

            txtClient.Text = client.Name;
            txtAum.Text = client.AUM;
            txtWebUrl.Text = client.WebURL;
            txtLogo.Text = client.LogoURL;
            txtRank.Text = client.Rank.ToString();
            chkIsActive.Checked = client.IsActive;
        }
    }
}