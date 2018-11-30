using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assette.Web.PublicSite
{
    public partial class why_assette : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ((HiddenField)this.Page.Master.FindControl("hdnLink")).Value = "lnkwhyassette";
        }
    }
}