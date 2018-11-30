using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite
{
    public partial class sign_up : System.Web.UI.Page
    {
        string videoKey = string.Empty;
        string random = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            videoKey = Request.QueryString["videokey"];
            random = Request.QueryString["random"];
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            
            var proxy = new BusinessProxy();

            /*
            string prospectId = proxy.CreateProspect(txtFirstName.Text.Trim(), txtLastName.Text.Trim(), txtJobTitle.Text.Trim(), txtEmail.Text.Trim(), txtCompany.Text.Trim(), GetIPAddress(), txtAum.Text.Trim(), HttpContext.Current.Request.Url.AbsolutePath);

            if (prospectId != "100")
            {
                HttpCookie cookie = Request.Cookies["cookieastpub"];
                string userId = Server.HtmlEncode(cookie.Value);

                proxy.LinkUserCookie(Guid.Parse(userId), Guid.Parse(prospectId));
            }
            */

            //((HiddenField)this.Page.Master.FindControl("hdnRegistered")).Value = "2";

            //HiddenField hf = (HiddenField)this.Parent.Parent.FindControl("hdnRegistered");

            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "fancyboxclosescript", "<script type='text/javascript'>window.top.setRegistrationTrue();parent.$.fancybox.close();</script>", false);
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