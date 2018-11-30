using System;
using Assette.Web.PublicSite.Common;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite.admin
{
    public partial class create_news_release : AdminBasePage
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                if (Id != null)
                {
                    GetNewsRelease(Id);
                }
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string strTitle = txtTitle.Text.Trim();
            string strDescription = txtDescription.Text.Trim();
            string strNewsReleaseUrl = txtNewsReleaseUrl.Text.Trim();
            DateTime dtDatePublished = cldrPublished.SelectedDate;
            bool boolIsActive = chkIsActive.Checked;
            bool boolIsSecure = chkIsSecure.Checked;
            Guid createdBy = Guid.NewGuid();

            var proxy = new BusinessProxy();

            if (Id != null)
            {
                EntityNewsReleases newsRelease = proxy.GetNewsRelease(Id);

                proxy.UpdateNewsRelease(newsRelease.Id.ToString(), strTitle, strDescription, strNewsReleaseUrl, dtDatePublished, boolIsActive, boolIsSecure);
            }
            else
            {
                proxy.CreateNewsRelease(strTitle, strDescription, strNewsReleaseUrl, dtDatePublished, boolIsActive, boolIsSecure, createdBy);
            }

            /*
            txtTitle.Text = "";
            txtDescription.Text = "";
            txtNewsReleaseUrl.Text = "";
            chkIsActive.Checked = true;*/

            Response.Redirect("news-releases.aspx"); 
        }

        public void GetNewsRelease(string Id)
        {
            var proxy = new BusinessProxy();
            EntityNewsReleases newsRelease = proxy.GetNewsRelease(Id);

            txtTitle.Text = newsRelease.Title;
            txtDescription.Text = newsRelease.Description;
            txtNewsReleaseUrl.Text = newsRelease.NewsReleaseFileURL;
            cldrPublished.SelectedDate = newsRelease.DatePublished;
            chkIsActive.Checked = newsRelease.IsActive;
            chkIsSecure.Checked = newsRelease.IsSecure;
        }
    }
}