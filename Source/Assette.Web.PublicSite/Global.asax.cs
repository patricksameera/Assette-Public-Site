using System;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Web;
using System.Web.Routing;
using Assette.Web.PublicSite.Proxy;
using log4net;
using log4net.Config;
using log4net.Util;

namespace Assette.Web.PublicSite
{
    public class Global : System.Web.HttpApplication
    {
        private static readonly ILog Log = LogManager.GetLogger(typeof(Global));

        void Application_Start(object sender, EventArgs e)
        {
            LogLog.InternalDebugging = true;

            var log4NetConfigFilePath = string.Format("{0}.log4net", Assembly.GetExecutingAssembly().Location);

            // development purpose
            //log4NetConfigFilePath = @"G:\Assette Site - Versions\Project Solution\Assette.Web\Source\Assette.Web.PublicSite\Assette.Web.PublicSite.dll.log4net";

            XmlConfigurator.ConfigureAndWatch(new FileInfo(log4NetConfigFilePath));
            BasicConfigurator.Configure();
        }

        void Application_End(object sender, EventArgs e)
        {

        }

        void Application_Error(object sender, EventArgs e)
        {
            BusinessProxy proxy = new BusinessProxy();

            // logging - log4net /////////////////////////////////////////////////////////////////////////////////////////
            Exception ex = Server.GetLastError().GetBaseException();

            if (ex is System.Web.HttpException)
            {
                var filePath = Context.Request.FilePath;
                var url = ((HttpApplication)sender).Context.Request.Url;

                Log.Error("Application Error --> URL: " + url + "; FilePath: " + filePath, ex);
            }
            else
            {
                Log.Error("Application Error -->", ex);
            }

            //Response.Redirect("contact.aspx");
        }

        void Session_Start(object sender, EventArgs e)
        {

        }

        void Session_End(object sender, EventArgs e)
        {

        }

    }
}
