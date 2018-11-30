using System;
using System.Net;
using System.Web;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;
using System.Web.Script.Serialization;

namespace Assette.Web.PublicSite
{
    public partial class AssetteMaterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetUserCookieData();

            GetUserActivityCookieData();

            // set version number
            hdnVersion.Value = System.Configuration.ConfigurationManager.AppSettings["Version"];
        }

        public void GetUserActivityCookieData()
        {
            var proxy = new BusinessProxy();
            Guid userId;

            string cookieName = System.Configuration.ConfigurationManager.AppSettings["UserActivityCookieName"];

            HttpCookie myCookie = new HttpCookie(cookieName);
            myCookie = HttpContext.Current.Request.Cookies[cookieName];

            if (myCookie != null && myCookie.Value != "undefined")
            {
                HttpCookie cookie = Request.Cookies[cookieName];
                userId = Guid.Parse(Server.HtmlEncode(cookie.Value));
            }
            else
            {
                userId = Guid.NewGuid();

                HttpCookie cookie = new HttpCookie(cookieName);
                cookie.Value = userId.ToString();
                cookie.Expires = DateTime.MaxValue;
                Response.Cookies.Add(cookie);
            }

            int pageId = int.Parse(proxy.GetPageUrlId(HttpContext.Current.Request.Url.AbsolutePath));
            proxy.CreateUserActivity(userId, pageId);
        }

        public void GetUserCookieData()
        {
            string cookieName = System.Configuration.ConfigurationManager.AppSettings["UserCookieName"];

            HttpCookie myCookie = new HttpCookie(cookieName);
            myCookie = HttpContext.Current.Request.Cookies[cookieName];

            if (myCookie != null && myCookie.Value != "undefined")
            {
                string email = Server.UrlDecode(myCookie.Value);

                // set registered value
                HttpContext.Current.Session["Email"] = email;
                ((HiddenField)this.Page.Master.FindControl("hdnRegistered")).Value = "1";
            }
        }

        public string GetUserByEmail(string email)
        {
            string hubSpotApiKey = System.Configuration.ConfigurationManager.AppSettings["HubSpotApiKey"];
            string rtnValue = string.Empty;

            //string url = "https://api.hubapi.com/contacts/v1/contact/email/testingapis@hubspot.com/profile?hapikey=demo";
            string url = "https://api.hubapi.com/contacts/v1/contact/email/" + email + "/profile?hapikey=" + hubSpotApiKey;

            try
            {
                string strHubSpotUTK = Request.Cookies["hubspotutk"].Value;

                WebClient webClient = new WebClient();
                rtnValue = webClient.DownloadString(url);
            }
            catch (Exception ex)
            {
                rtnValue = "";
            }

            return rtnValue;
        }
    }
}