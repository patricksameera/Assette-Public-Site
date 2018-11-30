using System;
using System.Web.UI;
using Assette.Web.PublicSite.Proxy;
using Assette.Web.PublicSite.Common;

namespace Assette.Web.PublicSite.admin
{
    public partial class create_press_release_quote : AdminBasePage
    {
        public string Id = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["id"];

            if (!Page.IsPostBack)
            {
                if (Id != null)
                {
                    GetTestimonial(Id);
                }
            }
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string strAuthor = txtAuthor.Text.Trim();
            string strPositionOfAuthor = txtPositionOfAuthor.Text.Trim();
            string strCompany = txtCompany.Text.Trim();
            string strQuote = txtQuote.Text.Trim();
            string strRank = txtRank.Text.Trim();
            DateTime dtDatePublished = cldrPublished.SelectedDate;
            bool boolIsActive = chkIsActive.Checked;
            Guid createdBy = Guid.NewGuid();

            var proxy = new BusinessProxy();

            if (Id != null)
            {
                EntityPressReleaseQuotes pressReleaseQuote = proxy.GetPressReleaseQuote(Id);

                proxy.UpdatePressReleaseQuote(pressReleaseQuote.Id.ToString(), strAuthor, strPositionOfAuthor, strQuote, strRank, dtDatePublished, boolIsActive, strCompany);
            }
            else
            {
                proxy.CreatePressReleaseQuote(strAuthor, strPositionOfAuthor, strQuote, strRank, dtDatePublished, boolIsActive, createdBy, strCompany);
            }

            /*
            txtAuthor.Text = "";
            txtPositionOfAuthor.Text = "";
            txtQuote.Text = "";
            txtRank.Text = "";
            chkIsActive.Checked = true;*/

            Response.Redirect("press-release-quotes.aspx");
        }

        public void GetTestimonial(string Id)
        {
            var proxy = new BusinessProxy();
            EntityPressReleaseQuotes pressReleaseQuote = proxy.GetPressReleaseQuote(Id);

            txtAuthor.Text = pressReleaseQuote.Author;
            txtPositionOfAuthor.Text = pressReleaseQuote.PositionOfAuthor;
            txtCompany.Text = pressReleaseQuote.Company;
            txtQuote.Text = pressReleaseQuote.Quote;
            txtRank.Text = pressReleaseQuote.Rank.ToString();
            chkIsActive.Checked = true;
            cldrPublished.SelectedDate = pressReleaseQuote.DatePublished;
        }
    }
}