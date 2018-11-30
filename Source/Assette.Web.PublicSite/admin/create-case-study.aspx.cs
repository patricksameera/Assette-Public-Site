using System;
using Assette.Web.PublicSite.Proxy;
using Assette.Web.PublicSite.Common;

namespace Assette.Web.PublicSite.admin
{
    public partial class create_case_study : AdminBasePage
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                FillClientList();

                if (Id != null)
                {
                    GetCaseStudy(Id);
                }
            }  
        }

        public void FillClientList()
        {
            var proxy = new BusinessProxy();

            drpClient.DataSource = proxy.GetAllClients();
            drpClient.DataTextField = "Name";
            drpClient.DataValueField = "Id";
            drpClient.DataBind();
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string strClient = drpClient.SelectedValue;
            string strAuthor = txtAuthor.Text.Trim();
            string strPositionOfAuthor = txtPositionOfAuthor.Text.Trim();
            string strSummary = txtSummary.Text.Trim();
            string strQuotedText = txtQuotedText.Text.Trim();
            string strCaseStudyUrl = txtCaseStudyUrl.Text.Trim();
            string strRank = txtRank.Text.Trim();
            DateTime dtDatePublished = cldrPublished.SelectedDate;
            bool boolIsActive = chkIsActive.Checked;
            Guid createdBy = Guid.NewGuid();

            var proxy = new BusinessProxy();

            if (Id != null)
            {
                EntityCaseStudy caseStudy = proxy.GetCaseStudy(Id);

                proxy.UpdateCaseStudy(caseStudy.Id.ToString(), strClient, strAuthor, strPositionOfAuthor, strSummary, strQuotedText, strCaseStudyUrl, strRank, dtDatePublished, boolIsActive);
            }
            else
            {
                proxy.CreateCaseStudy(strClient, strAuthor, strPositionOfAuthor, strSummary, strQuotedText, strCaseStudyUrl, strRank, dtDatePublished, boolIsActive, createdBy);
            }

            /*
            drpClient.SelectedIndex = 0;
            txtAuthor.Text = "";
            txtPositionOfAuthor.Text = "";
            txtSummary.Text = "";
            txtQuotedText.Text = "";
            txtCaseStudyUrl.Text = "";
            txtRank.Text = "";
            chkIsActive.Checked = true;*/

            Response.Redirect("case-studies.aspx");
        }

        public void GetCaseStudy(string Id)
        {
            var proxy = new BusinessProxy();
            EntityCaseStudy caseStudy = proxy.GetCaseStudy(Id);

            drpClient.SelectedValue = caseStudy.ClientId.ToString();
            txtAuthor.Text = caseStudy.Author;
            txtPositionOfAuthor.Text = caseStudy.PositionOfAuthor;
            txtSummary.Text = caseStudy.Summary;
            txtQuotedText.Text = caseStudy.QuotedText;
            txtCaseStudyUrl.Text = caseStudy.CaseStudyFileURL;
            txtRank.Text = caseStudy.Rank.ToString();
            cldrPublished.SelectedDate = caseStudy.DatePublished;
            chkIsActive.Checked = caseStudy.IsActive;
        }
    }
}