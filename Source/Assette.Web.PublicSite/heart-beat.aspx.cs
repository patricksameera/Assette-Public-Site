using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;
using System.Configuration;

namespace Assette.Web.PublicSite
{
    public partial class heartbeat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var proxy = new BusinessProxy();
            lblResponse.Text = proxy.CheckHeartBeat();
        }
    }
}