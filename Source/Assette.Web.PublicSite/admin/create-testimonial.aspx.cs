using System;
using Assette.Web.PublicSite.Proxy;
using Assette.Web.PublicSite.Common;

namespace Assette.Web.PublicSite.admin
{
    public partial class create_testimonial : AdminBasePage
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
                    GetTestimonial(Id);
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
            string strTestimonialDescription = txtTestimonial.Text.Trim();
            string strRank = txtRank.Text.Trim();
            DateTime dtDatePublished = cldrPublished.SelectedDate;
            bool boolIsActive = chkIsActive.Checked;
            Guid createdBy = Guid.NewGuid();
            bool boolIsShownOnHomePage = chkIsShownOnHomePage.Checked;

            var proxy = new BusinessProxy();

            if (Id != null)
            {
                EntityTestimonial testimonial = proxy.GetTestimonial(Id);

                proxy.UpdateTestimonial(testimonial.Id.ToString(), strClient, strAuthor, strPositionOfAuthor, strTestimonialDescription, strRank, dtDatePublished, boolIsActive, boolIsShownOnHomePage);
            }
            else
            {
                proxy.CreateTestimonial(strClient, strAuthor, strPositionOfAuthor, strTestimonialDescription, strRank, dtDatePublished, boolIsActive, createdBy, boolIsShownOnHomePage);
            }

            /*
            drpClient.SelectedIndex = 0;
            txtAuthor.Text = "";
            txtPositionOfAuthor.Text = "";
            txtTestimonial.Text = "";
            txtRank.Text = "";
            chkIsActive.Checked = true;*/

            Response.Redirect("testimonials.aspx");
        }

        public void GetTestimonial(string Id)
        {
            var proxy = new BusinessProxy();
            EntityTestimonial testimonial = proxy.GetTestimonial(Id);

            drpClient.SelectedValue = testimonial.ClientId.ToString();
            txtAuthor.Text = testimonial.Author;
            txtPositionOfAuthor.Text = testimonial.PositionOfAuthor;
            txtTestimonial.Text = testimonial.Testimonial;
            txtRank.Text = testimonial.Rank.ToString();
            chkIsActive.Checked = true;
            cldrPublished.SelectedDate = testimonial.DatePublished;
            chkIsShownOnHomePage.Checked = testimonial.IsShownOnHomePage;
        }
    }
}