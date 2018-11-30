using System;
using Assette.Web.PublicSite.Proxy;
using Assette.Web.PublicSite.Common;

namespace Assette.Web.PublicSite.admin
{
    public partial class create_press_release : AdminBasePage
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                if (Id != null)
                {
                    GetPressRelease(Id);
                }
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string strTitle = txtTitle.Text.Trim();
            string strDescription = txtDescription.Text.Trim();
            string strNewsReleaseUrl = txtPressReleaseUrl.Text.Trim();
            DateTime dtDatePublished = cldrPublished.SelectedDate;
            bool boolIsActive = chkIsActive.Checked;
            Guid createdBy = Guid.NewGuid();

            var proxy = new BusinessProxy();

            if (Id != null)
            {
                EntityPressReleases pressRelease = proxy.GetPressRelease(Id);

                proxy.UpdatePressRelease(pressRelease.Id.ToString(), strTitle, strDescription, strNewsReleaseUrl, dtDatePublished, boolIsActive);
            }
            else
            {
                proxy.CreatePressRelease(strTitle, strDescription, strNewsReleaseUrl, dtDatePublished, boolIsActive, createdBy);
            }

            /*
            txtTitle.Text = "";
            txtDescription.Text = "";
            txtNewsReleaseUrl.Text = "";
            chkIsActive.Checked = true;*/

            Response.Redirect("press-releases.aspx"); 
        }

        public void GetPressRelease(string Id)
        {
            var proxy = new BusinessProxy();
            EntityPressReleases pressRelease = proxy.GetPressRelease(Id);

            txtTitle.Text = pressRelease.Title;
            txtDescription.Text = pressRelease.Description;
            txtPressReleaseUrl.Text = pressRelease.PressReleaseFileURL;
            cldrPublished.SelectedDate = pressRelease.DatePublished;
            chkIsActive.Checked = pressRelease.IsActive;
        }
    }
}