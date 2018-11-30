using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite.usercontrol
{
    public partial class sign_up : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var proxy = new BusinessProxy();

            //string prospectId = proxy.CreateProspect(txtFirstName.Text.Trim(), txtLastName.Text.Trim(), txtJobTitle.Text.Trim(), txtEmail.Text.Trim(), txtCompany.Text.Trim(), GetIPAddress(), txtAum.Text.Trim(), HttpContext.Current.Request.Url.AbsolutePath);

            //if (prospectId != "100")
            //{
            //    HttpCookie cookie = Request.Cookies["cookieastpub"];
            //    string userId = Server.HtmlEncode(cookie.Value);

            //    proxy.LinkUserCookie(Guid.Parse(userId), Guid.Parse(prospectId));
            //}
        }

        public string GetIPAddress()
        {
            string IPAddress = string.Empty;

            // method 01
            //string hostName = System.Net.Dns.GetHostName();
            //IPHostEntry ipEntry = System.Net.Dns.GetHostEntry(hostName);
            //IPAddress[] addr = ipEntry.AddressList;
            //IPAddress = addr[addr.Length - 1].ToString();

            // method 02
            string ipList = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipList))
            {
                IPAddress = ipList.Split(',')[0];
            }
            else
            {
                IPAddress = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
            }

            return IPAddress;
        }
    }
}