using System;
using System.Web.UI.WebControls;

namespace Assette.Web.PublicSite
{
    public partial class contact : ClientBasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkContact";

            AddMetaTag("description", "Assette, 1 Faneuil Hall 4th Floor, Boston, MA 02109");
        }
    }
}