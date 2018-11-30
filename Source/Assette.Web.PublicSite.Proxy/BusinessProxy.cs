using System;
using System.IO;
using System.Reflection;
using System.Web.Security;
using Assette.Web.PublicSite.Data;
using log4net;
using log4net.Config;
using log4net.Util;
using Assette.Web.PublicSite.Proxy;
using Assette.Web.PublicSite.Common;
using System.Collections.Generic;

#if !DEBUG

using System.EnterpriseServices;
using System.Runtime.InteropServices;

#endif

namespace Assette.Web.PublicSite.Proxy
{
#if DEBUG

    public class BusinessProxy : IBusinessProxy

#else

    [ClassInterface(ClassInterfaceType.None)]
    public class BusinessProxy : ServicedComponent, IBusinessProxy

#endif
    {
        private static readonly ILog Log = LogManager.GetLogger(typeof(BusinessProxy));

        public BusinessProxy()
        {

        }

        static BusinessProxy()
        {
            LogLog.InternalDebugging = true;

            string log4netConfigFilePath = string.Format("{0}.log4net", Assembly.GetExecutingAssembly().Location);

            XmlConfigurator.ConfigureAndWatch(new FileInfo(log4netConfigFilePath));
        }

        public string GetConnectionString()
        {
            var ret = DataManager.GetConnectionString();

            return ret;
        }

        public string CheckHeartBeat()
        {
            return DataManager.CheckHeartBeat();
        }

        public string CreateClient(string name, string aum, string webUrl, string logoUrl, string rank, bool isActive, Guid createdBy)
        {
            return DataManager.CreateClient(name, aum, webUrl, logoUrl, rank, isActive, createdBy);
        }

        public IEnumerable<EntityClient> GetAllClients()
        {
            return DataManager.GetAllClients();
        }

        public IEnumerable<EntityClient> GetAllActiveClients()
        {
            return DataManager.GetAllActiveClients();
        }

        public IEnumerable<EntityClient> GetAllClientDetailsRandom()
        {
            return DataManager.GetAllClientDetailsRandom();
        }

        public IEnumerable<EntityClient> GetAllClientDetailsRandomScroll()
        {
            return DataManager.GetAllClientDetailsRandomScroll();
        } 

        public string CreateCaseStudy(string clientId, string author, string positionOfAuthor, string summary, string quotedText, string caseStudyFileUrl, string rank, DateTime datePublished, bool isActive, Guid createdBy)
        {
            return DataManager.CreateCaseStudy(clientId, author, positionOfAuthor, summary, quotedText, caseStudyFileUrl, rank, datePublished, isActive, createdBy);
        }

        public IEnumerable<EntityCaseStudy> GetAllCaseStudies()
        {
            return DataManager.GetAllCaseStudies();
        }

        public IEnumerable<EntityCaseStudy> GetAllActiveCaseStudies()
        {
            return DataManager.GetAllActiveCaseStudies();
        }

        public IEnumerable<EntityCaseStudy> GetTop4CaseStudies()
        {
            return DataManager.GetTop4CaseStudies();
        }

        public string CreateTestimonial(string clientId, string author, string positionOfAuthor, string testimonialDescription, string rank, DateTime datePublished, bool isActive, Guid createdBy, bool isShownOnHomePage)
        {
            return DataManager.CreateTestimonial(clientId, author, positionOfAuthor, testimonialDescription, rank, datePublished, isActive, createdBy, isShownOnHomePage);
        }

        public IEnumerable<EntityTestimonial> GetAllTestimonials()
        {
            return DataManager.GetAllTestimonials();
        }

        public IEnumerable<EntityTestimonial> GetAllActiveTestimonials()
        {
            return DataManager.GetAllActiveTestimonials();
        }

        public IEnumerable<EntityTestimonial> GetTopRandomTestimonial()
        {
            return DataManager.GetTopRandomTestimonial();
        }

        public IEnumerable<EntityTestimonial> GetRandomTestimonials()
        {
            return DataManager.GetRandomTestimonials();
        }

        public string CreateNewsRelease(string title, string description, string newsReleaseFileUrl, DateTime datePublished, bool isActive, bool isSecure, Guid createdBy)
        {
            return DataManager.CreateNewsRelease(title, description, newsReleaseFileUrl, datePublished, isActive, isSecure, createdBy);
        }

        public IEnumerable<EntityNewsReleases> GetAllNewsReleases()
        {
            return DataManager.GetAllNewsReleases();
        }

        public IEnumerable<EntityNewsReleases> GetAllActiveNewsReleases()
        {
            return DataManager.GetAllActiveNewsReleases();
        }

        public string CreatePressRelease(string title, string description, string newsReleaseFileUrl, DateTime datePublished, bool isActive, Guid createdBy)
        {
            return DataManager.CreatePressRelease(title, description, newsReleaseFileUrl, datePublished, isActive, createdBy);
        }

        public IEnumerable<EntityPressReleases> GetAllPressReleases()
        {
            return DataManager.GetAllPressReleases();
        }

        public IEnumerable<EntityPressReleases> GetAllActivePressReleases()
        {
            return DataManager.GetAllActivePressReleases();
        }

        public bool CheckAdminLogin(string userName, string password)
        {
            return DataManager.CheckAdminLogin(userName, password);
        }

        public string GetPageUrlId(string pageUrl)
        {
            return DataManager.GetPageUrlId(pageUrl);
        }
    
        public string CreateUserActivity(Guid userId, int pageId)
        {
            return DataManager.CreateUserActivity(userId, pageId);
        }

        public string LinkUserCookie(Guid userId, Guid prospectId)
        {
            return DataManager.LinkUserCookie(userId, prospectId);
        }

        public string CreateUser(string firstName, string lastName, string jobTitle, string email, string company, string registeredIP, string title, string firmAum, string firmType)
        {
            return DataManager.CreateUser(firstName, lastName, jobTitle, email, company, registeredIP, title, firmAum, firmType);
        }

        public EntityCaseStudy GetCaseStudy(string Id)
        {
            return DataManager.GetCaseStudy(Id);
        }

        public string UpdateCaseStudy(string Id, string clientId, string author, string positionOfAuthor, string summary, string quotedText, string caseStudyFileUrl, string rank, DateTime datePublished, bool isActive)
        {
            return DataManager.UpdateCaseStudy(Id, clientId, author, positionOfAuthor, summary, quotedText, caseStudyFileUrl, rank, datePublished, isActive);
        }

        public string DeleteCaseStudy(string Id)
        {
            return DataManager.DeleteCaseStudy(Id);
        }

        public EntityClient GetClient(string Id)
        {
            return DataManager.GetClient(Id);
        }

        public string UpdateClient(string Id, string name, string aum, string webUrl, string logoUrl, string rank, bool isActive)
        {
            return DataManager.UpdateClient(Id, name, aum, webUrl, logoUrl, rank, isActive);
        }

        public string DeleteClient(string Id)
        {
            return DataManager.DeleteClient(Id);
        }

        public EntityTestimonial GetTestimonial(string Id)
        {
            return DataManager.GetTestimonial(Id);
        }

        public string UpdateTestimonial(string Id, string clientId, string author, string positionOfAuthor, string testimonialDescription, string rank, DateTime datePublished, bool isActive, bool isShownOnHomePage)
        {
            return DataManager.UpdateTestimonial(Id, clientId, author, positionOfAuthor, testimonialDescription, rank, datePublished, isActive, isShownOnHomePage);
        }

        public string DeleteTestimonial(string Id)
        {
            return DataManager.DeleteTestimonial(Id);
        }

        public EntityPressReleases GetPressRelease(string Id)
        {
            return DataManager.GetPressRelease(Id);
        }

        public string UpdatePressRelease(string Id, string title, string description, string pressReleaseFileUrl, DateTime datePublished, bool isActive)
        {
            return DataManager.UpdatePressRelease(Id, title, description, pressReleaseFileUrl, datePublished, isActive);
        }

        public string DeletePressRelease(string Id)
        {
            return DataManager.DeletePressRelease(Id);
        }

        public EntityNewsReleases GetNewsRelease(string Id)
        {
            return DataManager.GetNewsRelease(Id);
        }

        public string UpdateNewsRelease(string Id, string title, string description, string newsReleaseFileURL, DateTime datePublished, bool isActive, bool isSecure)
        {
            return DataManager.UpdateNewsRelease(Id, title, description, newsReleaseFileURL, datePublished, isActive, isSecure);
        }

        public string DeletenewsRelease(string Id)
        {
            return DataManager.DeletenewsRelease(Id);
        }

        public string CreatePressReleaseQuote(string author, string positionOfAuthor, string quote, string rank, DateTime datePublished, bool isActive, Guid createdBy, string company)
        {
            return DataManager.CreatePressReleaseQuote(author, positionOfAuthor, quote, rank, datePublished, isActive, createdBy, company);
        }

        public IEnumerable<EntityPressReleaseQuotes> GetAllPressReleaseQuotes()
        {
            return DataManager.GetAllPressReleaseQuotes();
        }

        public IEnumerable<EntityPressReleaseQuotes> GetAllActivePressReleaseQuotes()
        {
            return DataManager.GetAllActivePressReleaseQuotes();
        }

        public EntityPressReleaseQuotes GetPressReleaseQuote(string Id)
        {
            return DataManager.GetPressReleaseQuote(Id);
        }

        public string UpdatePressReleaseQuote(string Id, string author, string positionOfAuthor, string quote, string rank, DateTime datePublished, bool isActive, string company)
        {
            return DataManager.UpdatePressReleaseQuote(Id, author, positionOfAuthor, quote, rank, datePublished, isActive, company);
        }

        public string DeletePressReleaseQuote(string Id)
        {
            return DataManager.DeletePressReleaseQuote(Id);
        }

        public IEnumerable<EntityPressReleaseQuotes> GetRandomPressReleaseQuotes()
        {
            return DataManager.GetRandomPressReleaseQuotes();
        }

        public IEnumerable<EntityBlogEntry> GetLatestBlogEntry()
        {
            return DataManager.GetLatestBlogEntry();
        }

        public string CheckEmailExistence(string email)
        {
            string rtnVal = string.Empty;

            rtnVal = DataManager.CheckEmailExistence(email);

            return rtnVal;
        }
    }
}
