using System;
using Assette.Web.PublicSite.Proxy;
using System.Drawing;

namespace Assette.Web.PublicSite.usercontrol
{
    public partial class client_list : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetAllClients();
        }

        public void GetAllClients()
        {
            var proxy = new BusinessProxy();

            lstvwClients.DataSource = proxy.GetAllClients();
            lstvwClients.DataBind();
        }

        public string GetImageWidth(string path)
        {
            Bitmap bmp = new Bitmap(Server.MapPath(path));
            return bmp.Width.ToString();
        }

        public string GetImageHeight(string path)
        {
            Bitmap bmp = new Bitmap(Server.MapPath(path));
            return bmp.Height.ToString();
        }
    }
}