using System;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Net;
using System.Web.Script.Serialization;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using Assette.Web.PublicSite.Proxy;

namespace Assette.Web.PublicSite
{
    public class ClientBasePage : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
        }

        public void AddMetaTag(string tagName, string tagContent)
        {
            HtmlMeta meta_tag = new HtmlMeta();

            meta_tag.Name = tagName;
            meta_tag.Content = tagContent;

            Page.Header.Controls.Add(meta_tag);
        }

        public int CheckUserEmail(string email)
        {
            string hubSpotApiKey = System.Configuration.ConfigurationManager.AppSettings["HubSpotApiKey"];
            int rtnValue = 0;

            //string url = "https://api.hubapi.com/contacts/v1/contact/email/testingapis@hubspot.com/profile?hapikey=demo";
            string url = "https://api.hubapi.com/contacts/v1/contact/email/" + email + "/profile?hapikey=" + hubSpotApiKey;

            try
            {
                string strHubSpotUTK = Request.Cookies["hubspotutk"].Value;

                WebClient webClient = new WebClient();
                string data = webClient.DownloadString(url);

                JavaScriptSerializer serializer = new JavaScriptSerializer();
                dynamic obj = serializer.Deserialize<dynamic>(data);

                string existingEmail = obj["properties"]["email"]["value"];
                rtnValue = 1;
            }
            catch (Exception ex)
            {
                rtnValue = 0;
            }

            return rtnValue;
        }

        public bool CreateNewContactInHubSpot(string firstName, string lastName, string email, string title, string job_function, string firm_name, string firm_aum, string firm_type, string description, string pageTitle, string heard)
        {
            Dictionary<string, string> dictFormValues = new Dictionary<string, string>();
            dictFormValues.Add("firstname", firstName);
            dictFormValues.Add("lastname", lastName);
            dictFormValues.Add("email", email);
            dictFormValues.Add("jobtitle", title); 
            dictFormValues.Add("job_function", job_function);
            dictFormValues.Add("company", firm_name); 
            dictFormValues.Add("firm_aum_tier", firm_aum);
            dictFormValues.Add("firm_type", firm_type);
            dictFormValues.Add("message", description);
            dictFormValues.Add("hear_about_assette", heard);

            // Form Variables (from the HubSpot Form Edit Screen)
            int intPortalID = int.Parse(System.Configuration.ConfigurationManager.AppSettings["HubSpotPortalId"]); ; // YOUR PORTAL ID GOES HERE
            string strFormGUID = System.Configuration.ConfigurationManager.AppSettings["HubSpotFormGuid"]; // YOUR FORM ID GOES HERE

            // Tracking Code Variables
            string strHubSpotUTK = Request.Cookies["hubspotutk"].Value;
            string strIpAddress = System.Web.HttpContext.Current.Request.UserHostAddress;

            // Page Variables
            //string strPageTitle = this.Title;
            string strPageTitle = pageTitle;
            string strPageURL = System.Web.HttpContext.Current.Request.Url.AbsoluteUri;

            // Do the post, returns true/false
            string strError = "";

            // blnRet = true;
            bool blnRet = Post_To_HubSpot_FormsAPI(intPortalID, strFormGUID, dictFormValues, strHubSpotUTK, strIpAddress, strPageTitle, strPageURL, ref strError);

            return blnRet;
        }

        public bool Post_To_HubSpot_FormsAPI(int intPortalID, string strFormGUID, Dictionary<string, string> dictFormValues, string strHubSpotUTK, string strIpAddress, string strPageTitle, string strPageURL, ref string strMessage)
        {
            // Build Endpoint URL
            string strEndpointURL = string.Format("https://forms.hubspot.com/uploads/form/v2/{0}/{1}", intPortalID, strFormGUID);

            // Setup HS Context Object
            Dictionary<string, string> hsContext = new Dictionary<string, string>();
            hsContext.Add("hutk", strHubSpotUTK);
            hsContext.Add("ipAddress", strIpAddress);
            hsContext.Add("pageUrl", strPageURL);
            hsContext.Add("pageName", strPageTitle);

            // Serialize HS Context to JSON (string)
            System.Web.Script.Serialization.JavaScriptSerializer json = new System.Web.Script.Serialization.JavaScriptSerializer();
            string strHubSpotContextJSON = json.Serialize(hsContext);

            // Create string with post data
            string strPostData = "";

            // Add dictionary values
            foreach (var d in dictFormValues)
            {
                strPostData += d.Key + "=" + Server.UrlEncode(d.Value) + "&";
            }

            // Append HS Context JSON
            strPostData += "hs_context=" + Server.UrlEncode(strHubSpotContextJSON);

            // Create web request object
            System.Net.HttpWebRequest r = (System.Net.HttpWebRequest)System.Net.WebRequest.Create(strEndpointURL);

            // Set headers for POST
            r.Method = "POST";
            r.ContentType = "application/x-www-form-urlencoded";
            r.ContentLength = strPostData.Length;
            r.KeepAlive = false;

            // POST data to endpoint
            using (System.IO.StreamWriter sw = new System.IO.StreamWriter(r.GetRequestStream()))
            {
                try
                {
                    sw.Write(strPostData);
                }
                catch (Exception ex)
                {
                    // POST Request Failed
                    strMessage = ex.Message;
                    return false;
                }
            }

            return true; //POST Succeeded
        }

        public void CreateCookie(string email)
        {
            string cookieName = System.Configuration.ConfigurationManager.AppSettings["UserCookieName"];

            HttpCookie myCookie = new HttpCookie(cookieName);
            myCookie.Value = email;
            myCookie.Expires = DateTime.Now.AddDays(365d);
            HttpContext.Current.Response.Cookies.Add(myCookie);

            HttpCookie newCookie = new HttpCookie(cookieName);
            newCookie = HttpContext.Current.Request.Cookies[cookieName];
            string cookieValue = newCookie.Value;

            HttpContext.Current.Session["Email"] = email;
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

        public void CreateUserLocally(string firstName, string lastName, string jobTitle, string email, string firmName, string title, string firmAum, string firmType)
        {
            var proxy = new BusinessProxy();

            string emailExistenceRtnVal = proxy.CheckEmailExistence(email);

            if (emailExistenceRtnVal != "1")
            {
                string prospectId = proxy.CreateUser(firstName, lastName, jobTitle, email, firmName, GetIPAddress(), title, firmAum, firmType);

                if (prospectId != "-1")
                {
                    HttpCookie cookie = Request.Cookies["cookieastpub"];
                    string userId = Server.HtmlEncode(cookie.Value);

                    proxy.LinkUserCookie(Guid.Parse(userId), Guid.Parse(prospectId));
                }
            }
        }

        public static string GetIPAddress()
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

        public static void GenerateApplicationErrorForTesting()
        {
            // application error test - testing purpose

            throw new ApplicationException("programmatically generating an application error");
        }
    }
}