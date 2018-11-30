using System;
using System.Runtime.InteropServices;
using System.Web.Security;
using Assette.Web.PublicSite.Common;
using System.Collections.Generic;
using Assette.Web.PublicSite.Data;

namespace Assette.Web.PublicSite.Proxy
{
    [Guid("B9D83D12-929F-4620-AF60-9E99B63C89D6")]
    [ComVisible(true)]

    public interface IBusinessProxy
    {
        string GetConnectionString();
        string CheckHeartBeat();
        string CreateClient(string name, string aum, string webUrl, string logoUrl, string rank, bool isActive, Guid createdBy);
        IEnumerable<EntityClient> GetAllClients();
        IEnumerable<EntityClient> GetAllClientDetailsRandom();
        IEnumerable<EntityClient> GetAllClientDetailsRandomScroll();
        string CreateCaseStudy(string clientId, string author, string positionOfAuthor, string summary, string quotedText, string caseStudyFileUrl, string rank, DateTime datePublished, bool isActive, Guid createdBy);
        IEnumerable<EntityCaseStudy> GetAllCaseStudies();
        IEnumerable<EntityCaseStudy> GetTop4CaseStudies();
        string CreateTestimonial(string clientId, string author, string positionOfAuthor, string testimonialDescription, string rank, DateTime datePublished, bool isActive, Guid createdBy, bool isShownOnHomePage);
        IEnumerable<EntityTestimonial> GetAllTestimonials();
        IEnumerable<EntityTestimonial> GetTopRandomTestimonial();
        IEnumerable<EntityTestimonial> GetRandomTestimonials();
        string CreateNewsRelease(string title, string description, string newsReleaseFileUrl, DateTime datePublished, bool isActive, bool isSecure, Guid createdBy);
        IEnumerable<EntityNewsReleases> GetAllNewsReleases();
        string CreatePressRelease(string title, string description, string newsReleaseFileUrl, DateTime datePublished, bool isActive, Guid createdBy);
        IEnumerable<EntityPressReleases> GetAllPressReleases();
        bool CheckAdminLogin(string userName, string password);
        string GetPageUrlId(string pageUrl);
        string CreateUserActivity(Guid userId, int pageId);
        string LinkUserCookie(Guid userId, Guid prospectId);
        string CreateUser(string firstName, string lastName, string jobTitle, string email, string company, string registeredIP, string title, string firmAum, string firmType);
        EntityCaseStudy GetCaseStudy(string Id);
        string UpdateCaseStudy(string Id, string clientId, string author, string positionOfAuthor, string summary, string quotedText, string caseStudyFileUrl, string rank, DateTime datePublished, bool isActive);
        string DeleteCaseStudy(string Id);
        EntityClient GetClient(string Id);
        string UpdateClient(string Id, string name, string aum, string webUrl, string logoUrl, string rank, bool isActive);
        string DeleteClient(string Id);
        EntityTestimonial GetTestimonial(string Id);
        string UpdateTestimonial(string Id, string clientId, string author, string positionOfAuthor, string testimonialDescription, string rank, DateTime datePublished, bool isActive, bool isShownOnHomePage);
        string DeleteTestimonial(string Id);
        EntityPressReleases GetPressRelease(string Id);
        string UpdatePressRelease(string Id, string title, string description, string pressReleaseFileUrl, DateTime datePublished, bool isActive);
        string DeletePressRelease(string Id);
        EntityNewsReleases GetNewsRelease(string Id);
        string UpdateNewsRelease(string Id, string title, string description, string newsReleaseFileURL, DateTime datePublished, bool isActive, bool isSecure);
        string DeletenewsRelease(string Id);
        IEnumerable<EntityClient> GetAllActiveClients();
        IEnumerable<EntityCaseStudy> GetAllActiveCaseStudies();
        IEnumerable<EntityTestimonial> GetAllActiveTestimonials();
        IEnumerable<EntityNewsReleases> GetAllActiveNewsReleases();
        string CreatePressReleaseQuote(string author, string positionOfAuthor, string quote, string rank, DateTime datePublished, bool isActive, Guid createdBy, string company);
        IEnumerable<EntityPressReleaseQuotes> GetAllPressReleaseQuotes();
        IEnumerable<EntityPressReleaseQuotes> GetAllActivePressReleaseQuotes();
        EntityPressReleaseQuotes GetPressReleaseQuote(string Id);
        string UpdatePressReleaseQuote(string Id, string author, string positionOfAuthor, string quote, string rank, DateTime datePublished, bool isActive, string company);
        string DeletePressReleaseQuote(string Id);
        IEnumerable<EntityPressReleaseQuotes> GetRandomPressReleaseQuotes();
        IEnumerable<EntityBlogEntry> GetLatestBlogEntry();
        string CheckEmailExistence(string email);
    }
}
