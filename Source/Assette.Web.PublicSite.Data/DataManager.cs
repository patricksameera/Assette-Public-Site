using System;
using System.Collections.Generic;
using System.Data;
using System.Data.EntityClient;
using System.IO;
using System.Linq;
using System.Reflection;
using Assette.PA.Data;
using Assette.Web.PublicSite.Common;
using BTA.EPM.Common;
using log4net;
using log4net.Config;
using log4net.Util;

namespace Assette.Web.PublicSite.Data
{
    public class DataManager
    {
        public static string clientCode = string.Empty;      
        private static string message = string.Empty;
        private static readonly ILog Log = LogManager.GetLogger(typeof(DataManager));

        #region CONNECTION

        static DataManager()
        {
            clientCode = System.Configuration.ConfigurationManager.AppSettings["ClientCode"];

            LogLog.InternalDebugging = true;

            var log4NetConfigFilePath = string.Format("{0}.log4net", Assembly.GetExecutingAssembly().Location);

            // development purpose
            //log4NetConfigFilePath = @"G:\Assette Site - Versions\Project Solution\Assette.Web\Source\Assette.Web.PublicSite\Assette.Web.PublicSite.dll.log4net";

            XmlConfigurator.ConfigureAndWatch(new FileInfo(log4NetConfigFilePath));
            BasicConfigurator.Configure();

            // create connection
            BTAConnectionManager.CreateConnection(clientCode);
        }

        public static string GetConnectionString()
        {
            var ConnectionString = string.Empty;

            if (BTAConnectionManager.IsInTransaction)
            {
                ConnectionString = BTAConnectionManager.Connection.ClientConnectionString;

                //message = string.Format("GetConnectionString() ConnectionString: {0}", ConnectionString);
                //Log.Info(message);
            }
            else
            {
                try
                {
                    BTAConnectionManager.CreateConnection(clientCode);

                    ConnectionString = BTAConnectionManager.Connection.ClientConnectionString;

                    //message = string.Format("GetConnectionString() ClientCode: {0}, ConnectionString: {1}", clientCode, ConnectionString);
                    //Log.Info(message);
                }
                catch (Exception ex)
                {
                    Log.Error("GetConnectionString() - Error: Database connection creation error !!", ex);
                }
            }

            //ConnectionString = "user id=sa;password=hammer;database=Gallery_PRD;server=192.168.180.41";

            return ConnectionString;
        }

        public static string CheckHeartBeat()
        {
            try
            {
                Log.Info("CheckHeartBeat()");

                SqlHelper.ExecuteNonQuery(GetConnectionString(), CommandType.Text, "Select top 1 Id from paObjects;");

                Log.Info("CheckHeartBeat() - Connection to database is successful !!");

                return "Connection to database is successful !!";
            }
            catch (Exception ex)
            {
                Log.Error("CheckHeartBeat() - Error: Connection to database is unsuccessful !!", ex);

                return "ERROR: Connection to database is unsuccessful !!";
            }
        }

        public static AssetteEntities GetEntity()
        {
            var entity = new AssetteEntities();

            try
            {
                ((EntityConnection)entity.Connection).StoreConnection.ConnectionString = GetConnectionString();
            }
            catch (Exception ex)
            {
                Log.Error("GetEntity()", ex);
            }

            return entity;
        }

        #endregion

        #region Clients

        public static string CreateClient(string name, string aum, string webUrl, string logoUrl, string rank, bool isActive, Guid createdBy)
        {
            var rtnValue = string.Empty;

            message = string.Format("CreateClient() Parameters = name: {0}, aum: {1}, webUrl: {2}, logoUrl: {3}, rank: {4}, isActive: {5}, createdBy: {6}", name, aum, webUrl, logoUrl, rank, isActive, createdBy);
            Log.Info(message);

            try
            {
                var client = new Clients();

                client.Name = name;
                client.AUM = aum;
                client.WebURL = webUrl;
                client.LogoURL = logoUrl;
                client.Rank = int.Parse(rank);             
                client.IsActive = isActive;
                client.CreatedBy = createdBy;
                client.DateCreated = DateTime.Now;

                var entity = GetEntity();

                entity.AddToClients(client);
                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("CreateUser()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityClient> GetAllClients()
        {
            IEnumerable<EntityClient> rtnValue;

            message = string.Format("GetAllClients() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var clients = entity.Clients;

                var objects =
                    (from client in clients
                     select new EntityClient
                     {
                         Id = client.Id,
                         Name = client.Name,
                         AUM = client.AUM,
                         WebURL = client.WebURL,
                         LogoURL = client.LogoURL,
                         Rank = client.Rank,
                         IsActive = client.IsActive,
                         CreatedBy = client.CreatedBy,
                         DateCreated = client.DateCreated,
                         RandomGuid = new Guid()
                     });

                objects = objects.OrderBy(x => x.Rank);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllClients()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityClient> GetAllActiveClients()
        {
            IEnumerable<EntityClient> rtnValue;

            message = string.Format("GetAllActiveClients() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var clients = entity.Clients;

                var objects =
                    (from client in clients
                     where client.IsActive == true
                     select new EntityClient
                     {
                         Id = client.Id,
                         Name = client.Name,
                         AUM = client.AUM,
                         WebURL = client.WebURL,
                         LogoURL = client.LogoURL,
                         Rank = client.Rank,
                         IsActive = client.IsActive,
                         CreatedBy = client.CreatedBy,
                         DateCreated = client.DateCreated,
                         RandomGuid = new Guid()
                     });

                objects = objects.OrderBy(x => x.Rank);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllActiveClients()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityClient> GetAllClientDetailsRandom()
        {
            IEnumerable<EntityClient> rtnValue;

            try
            {
                var entity = GetEntity();

                var clients = entity.Clients;

                var objects =
                    (from client in clients
                     where client.IsActive == true
                     select new EntityClient
                     {
                         Id = client.Id,
                         Name = client.Name,
                         AUM = client.AUM,
                         WebURL = client.WebURL,
                         LogoURL = client.LogoURL,
                         Rank = client.Rank,
                         IsActive = client.IsActive,
                         CreatedBy = client.CreatedBy,
                         DateCreated = client.DateCreated,
                         RandomGuid = Guid.NewGuid()
                     });

                objects = objects.OrderBy(x => x.RandomGuid).Take(8);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllClientDetailsRandom()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityClient> GetAllClientDetailsRandomScroll()
        {
            IEnumerable<EntityClient> rtnValue;

            try
            {
                var entity = GetEntity();

                var clients = entity.Clients;

                var objects =
                    (from client in clients
                     where client.IsActive == true
                     select new EntityClient
                     {
                         Id = client.Id,
                         Name = client.Name,
                         AUM = client.AUM,
                         WebURL = client.WebURL,
                         LogoURL = client.LogoURL,
                         Rank = client.Rank,
                         IsActive = client.IsActive,
                         CreatedBy = client.CreatedBy,
                         DateCreated = client.DateCreated,
                         RandomGuid = Guid.NewGuid()
                     });

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllClientDetailsRandomScroll()", ex);
            }

            return rtnValue;
        }

        public static EntityClient GetClient(string Id)
        {
            EntityClient rtnValue;

            int clientId = int.Parse(Id);

            message = string.Format("GetClient()  Parameters = Id: {0}", Id);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var clients = entity.Clients;

                var objects =
                    (from client in clients
                     where client.Id == clientId
                     select new EntityClient
                     {
                         Id = client.Id,
                         Name = client.Name,
                         AUM = client.AUM,
                         WebURL = client.WebURL,
                         LogoURL = client.LogoURL,
                         Rank = client.Rank,
                         IsActive = client.IsActive,
                         CreatedBy = client.CreatedBy,
                         DateCreated = client.DateCreated,
                     }).FirstOrDefault();

                rtnValue = objects;
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetClient()", ex);
            }

            return rtnValue;
        }

        public static string UpdateClient(string Id, string name, string aum, string webUrl, string logoUrl, string rank, bool isActive)
        {
            var rtnValue = string.Empty;

            message = string.Format("UpdateClient() Parameters = Id: {0}, name: {1}, aum: {2}, webUrl: {3}, logoUrl: {4}, rank: {5}, isActive: {6}", Id, name, aum, webUrl, logoUrl, rank, isActive);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                int clientId = int.Parse(Id);

                var client = entity.Clients.FirstOrDefault(m => m.Id == clientId);

                client.Name = name;
                client.AUM = aum;
                client.WebURL = webUrl;
                client.LogoURL = logoUrl;
                client.Rank = int.Parse(rank);
                client.IsActive = isActive;

                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("UpdateClient()", ex);
            }

            return rtnValue;
        }

        public static string DeleteClient(string Id)
        {
            var rtnValue = string.Empty;

            message = string.Format("DeleteClient() Parameters = Id: {0}", Id.ToString());
            Log.Info(message);

            try
            {
                int clientId = int.Parse(Id);

                var entity = GetEntity();

                var clients = entity.Clients;

                var singleClient =
                    (from client in clients
                     where client.Id == clientId
                     select client).FirstOrDefault();

                // delete 
                entity.Clients.DeleteObject(singleClient);

                // save entity
                entity.SaveChanges();

                rtnValue = "1"; // success
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("DeleteClient()", ex);
            }

            return rtnValue;
        }

        #endregion

        #region Case Study

        public static string CreateCaseStudy(string clientId, string author, string positionOfAuthor, string summary, string quotedText, string caseStudyFileUrl, string rank, DateTime datePublished, bool isActive, Guid createdBy)
        {
            var rtnValue = string.Empty;

            message = string.Format("CreateCaseStudy() Parameters = clientId: {0}, author: {1}, positionOfAuthor: {2}, summary: {3}, quotedText: {4}, caseStudyFileUrl: {5}, rank: {6}, datePublished: {7}, isActive: {8}, createdBy: {9}", clientId, author, positionOfAuthor, summary, quotedText, caseStudyFileUrl, rank, datePublished, isActive, createdBy);
            Log.Info(message);

            try
            {
                var caseStudy = new CaseStudies();

                caseStudy.ClientId = int.Parse(clientId);
                caseStudy.Author = author;
                caseStudy.PositionOfAuthor = positionOfAuthor;
                caseStudy.Summary = summary;
                caseStudy.QuotedText = quotedText;
                caseStudy.CaseStudyFileURL = caseStudyFileUrl;
                caseStudy.Rank = int.Parse(rank);
                caseStudy.DatePublished = datePublished;
                caseStudy.IsActive = isActive;
                caseStudy.CreatedBy = createdBy;
                caseStudy.DateCreated = DateTime.Now;

                var entity = GetEntity();

                entity.AddToCaseStudies(caseStudy);
                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("CreateCaseStudy()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityCaseStudy> GetAllCaseStudies()
        {
            IEnumerable<EntityCaseStudy> rtnValue;

            message = string.Format("GetAllCaseStudies() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var caseStudies = entity.CaseStudies;

                var objects =
                    (from caseStudy in caseStudies
                     select new EntityCaseStudy
                     {
                         Id = caseStudy.Id,
                         ClientId = caseStudy.ClientId,
                         ClientName = caseStudy.AST_Clients.Name,
                         Author = caseStudy.Author,
                         PositionOfAuthor = caseStudy.PositionOfAuthor,
                         Summary = caseStudy.Summary,
                         QuotedText = caseStudy.QuotedText,
                         CaseStudyFileURL = caseStudy.CaseStudyFileURL,
                         Rank = caseStudy.Rank,
                         DatePublished = caseStudy.DatePublished,
                         IsActive = caseStudy.IsActive,
                         CreatedBy = caseStudy.CreatedBy,
                         DateCreated = caseStudy.DateCreated,
                         LogoURL = entity.Clients.Where(x => x.Id == caseStudy.ClientId).FirstOrDefault().LogoURL
                     });

                objects = objects.OrderBy(x => x.Id);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllCaseStudies()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityCaseStudy> GetAllActiveCaseStudies()
        {
            IEnumerable<EntityCaseStudy> rtnValue;

            message = string.Format("GetAllActiveCaseStudies() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var caseStudies = entity.CaseStudies;

                var objects =
                    (from caseStudy in caseStudies
                     where caseStudy.IsActive == true
                     select new EntityCaseStudy
                     {
                         Id = caseStudy.Id,
                         ClientId = caseStudy.ClientId,
                         ClientName = caseStudy.AST_Clients.Name,
                         Author = caseStudy.Author,
                         PositionOfAuthor = caseStudy.PositionOfAuthor,
                         Summary = caseStudy.Summary,
                         QuotedText = caseStudy.QuotedText,
                         CaseStudyFileURL = caseStudy.CaseStudyFileURL,
                         Rank = caseStudy.Rank,
                         DatePublished = caseStudy.DatePublished,
                         IsActive = caseStudy.IsActive,
                         CreatedBy = caseStudy.CreatedBy,
                         DateCreated = caseStudy.DateCreated,
                         LogoURL = entity.Clients.Where(x => x.Id == caseStudy.ClientId).FirstOrDefault().LogoURL
                     });

                objects = objects.OrderBy(x => x.Rank);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllActiveCaseStudies()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityCaseStudy> GetTop4CaseStudies()
        {
            IEnumerable<EntityCaseStudy> rtnValue;

            message = string.Format("GetTop4CaseStudies() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var caseStudies = entity.CaseStudies;

                var objects =
                    (from caseStudy in caseStudies
                     where caseStudy.IsActive == true
                     select new EntityCaseStudy
                     {
                         Id = caseStudy.Id,
                         ClientId = caseStudy.ClientId,
                         Author = caseStudy.Author,
                         PositionOfAuthor = caseStudy.PositionOfAuthor,
                         Summary = caseStudy.Summary,
                         QuotedText = caseStudy.QuotedText,
                         CaseStudyFileURL = caseStudy.CaseStudyFileURL,
                         Rank = caseStudy.Rank,
                         DatePublished = caseStudy.DatePublished,
                         IsActive = caseStudy.IsActive,
                         CreatedBy = caseStudy.CreatedBy,
                         DateCreated = caseStudy.DateCreated,
                         LogoURL = entity.Clients.Where(x => x.Id == caseStudy.ClientId).FirstOrDefault().LogoURL
                     });

                objects = objects.OrderBy(x => x.Rank).Take(4);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetTop4CaseStudies()", ex);
            }

            return rtnValue;
        }

        public static EntityCaseStudy GetCaseStudy(string Id)
        {
            EntityCaseStudy rtnValue;

            int caseStudyId = int.Parse(Id);

            message = string.Format("GetCaseStudy()  Parameters = Id: {0}", Id);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var caseStudies = entity.CaseStudies;

                var objects =
                    (from caseStudy in caseStudies
                     where caseStudy.Id == caseStudyId 
                     select new EntityCaseStudy
                     {
                         Id = caseStudy.Id,
                         ClientId = caseStudy.ClientId,
                         Author = caseStudy.Author,
                         PositionOfAuthor = caseStudy.PositionOfAuthor,
                         Summary = caseStudy.Summary,
                         QuotedText = caseStudy.QuotedText,
                         CaseStudyFileURL = caseStudy.CaseStudyFileURL,
                         Rank = caseStudy.Rank,
                         DatePublished = caseStudy.DatePublished,
                         IsActive = caseStudy.IsActive,
                         CreatedBy = caseStudy.CreatedBy,
                         DateCreated = caseStudy.DateCreated
                     }).FirstOrDefault();

                rtnValue = objects;
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetCaseStudy()", ex);
            }

            return rtnValue;
        }

        public static string UpdateCaseStudy(string Id, string clientId, string author, string positionOfAuthor, string summary, string quotedText, string caseStudyFileUrl, string rank, DateTime datePublished, bool isActive)
        {
            var rtnValue = string.Empty;

            message = string.Format("UpdateCaseStudy() Parameters = Id: {0}, clientId: {1}, author: {2}, positionOfAuthor: {3}, summary: {4}, quotedText: {5}, caseStudyFileUrl: {6}, rank: {7}, datePublished: {8}, isActive: {9}", Id, clientId, author, positionOfAuthor, summary, quotedText, caseStudyFileUrl, rank, datePublished, isActive);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                int caseStudyId = int.Parse(Id);

                var caseStudy = entity.CaseStudies.FirstOrDefault(m => m.Id == caseStudyId);

                caseStudy.ClientId = int.Parse(clientId);
                caseStudy.Author = author;
                caseStudy.PositionOfAuthor = positionOfAuthor;
                caseStudy.Summary = summary;
                caseStudy.QuotedText = quotedText;
                caseStudy.CaseStudyFileURL = caseStudyFileUrl;
                caseStudy.Rank = int.Parse(rank);
                caseStudy.DatePublished = datePublished;
                caseStudy.IsActive = isActive;

                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("UpdateCaseStudy()", ex);
            }

            return rtnValue;
        }

        public static string DeleteCaseStudy(string Id)
        {
            var rtnValue = string.Empty;

            message = string.Format("DeleteCaseStudy() Parameters = Id: {0}", Id.ToString());
            Log.Info(message);

            try
            {
                int caseStudyId = int.Parse(Id);

                var entity = GetEntity();

                var caseStudies = entity.CaseStudies;

                var singleCaseStudy =
                    (from caseStudy in caseStudies
                     where caseStudy.Id == caseStudyId
                     select caseStudy).FirstOrDefault();

                // delete
                entity.CaseStudies.DeleteObject(singleCaseStudy);

                // save entity
                entity.SaveChanges();

                rtnValue = "1"; // success
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("DeleteCaseStudy()", ex);
            }

            return rtnValue;
        }

        #endregion

        #region Testimonial

        public static string CreateTestimonial(string clientId, string author, string positionOfAuthor, string testimonialDescription, string rank, DateTime datePublished, bool isActive, Guid createdBy, bool isShownOnHomePage)
        {
            var rtnValue = string.Empty;

            message = string.Format("CreateTestimonial() Parameters = clientId: {0}, author: {1}, positionOfAuthor: {2}, testimonialDescription: {3}, rank: {4}, datePublished: {5}, isActive: {6}, createdBy: {7}, isShownOnHomePage: {8}", clientId, author, positionOfAuthor, testimonialDescription, rank, datePublished, isActive, createdBy, isShownOnHomePage);
            Log.Info(message);

            try
            {
                var testimonial = new Testimonials();

                testimonial.ClientId = int.Parse(clientId);
                testimonial.Author = author;
                testimonial.PositionOfAuthor = positionOfAuthor;
                testimonial.Testimonial = testimonialDescription;
                testimonial.Rank = int.Parse(rank);
                testimonial.DatePublished = datePublished;
                testimonial.IsActive = isActive;
                testimonial.CreatedBy = createdBy;
                testimonial.DateCreated = DateTime.Now;
                testimonial.IsShowOnHomePage = isShownOnHomePage;

                var entity = GetEntity();

                entity.AddToTestimonials(testimonial);
                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("CreateTestimonial()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityTestimonial> GetAllTestimonials()
        {
            IEnumerable<EntityTestimonial> rtnValue;

            message = string.Format("GetAllTestimonials() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var testimonials = entity.Testimonials;

                var objects =
                    (from testimonial in testimonials
                     select new EntityTestimonial
                     {
                         Id = testimonial.Id,
                         ClientId = testimonial.ClientId,
                         ClientName = testimonial.AST_Clients.Name,
                         Author = testimonial.Author,
                         PositionOfAuthor = testimonial.PositionOfAuthor,
                         Testimonial = testimonial.Testimonial,
                         Rank = testimonial.Rank,
                         DatePublished = testimonial.DatePublished,
                         IsActive = testimonial.IsActive,
                         IsShownOnHomePage = testimonial.IsShowOnHomePage,
                         CreatedBy = testimonial.CreatedBy,
                         DateCreated = testimonial.DateCreated
                     });

                objects = objects.OrderBy(x => x.Id);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllTestimonials()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityTestimonial> GetAllActiveTestimonials()
        {
            IEnumerable<EntityTestimonial> rtnValue;

            message = string.Format("GetAllActiveTestimonials() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var testimonials = entity.Testimonials;

                var objects =
                    (from testimonial in testimonials
                     where testimonial.IsActive == true
                     select new EntityTestimonial
                     {
                         Id = testimonial.Id,
                         ClientId = testimonial.ClientId,
                         ClientName = testimonial.AST_Clients.Name,
                         Author = testimonial.Author,
                         PositionOfAuthor = testimonial.PositionOfAuthor,
                         Testimonial = testimonial.Testimonial,
                         Rank = testimonial.Rank,
                         DatePublished = testimonial.DatePublished,
                         IsActive = testimonial.IsActive,
                         IsShownOnHomePage = testimonial.IsShowOnHomePage,
                         CreatedBy = testimonial.CreatedBy,
                         DateCreated = testimonial.DateCreated
                     });

                objects = objects.OrderBy(x => x.Id);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllActiveTestimonials()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityTestimonial> GetTopRandomTestimonial()
        {
            IEnumerable<EntityTestimonial> rtnValue;

            message = string.Format("GetTopRandomTestimonial() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var testimonials = entity.Testimonials;

                var objects =
                    (from testimonial in testimonials
                     where testimonial.IsActive == true && testimonial.IsShowOnHomePage == true
                     select new EntityTestimonial
                     {
                         Id = testimonial.Id,
                         ClientId = testimonial.ClientId,
                         ClientName = testimonial.AST_Clients.Name,
                         Author = testimonial.Author,
                         PositionOfAuthor = testimonial.PositionOfAuthor,
                         Testimonial = testimonial.Testimonial,
                         Rank = testimonial.Rank,
                         DatePublished = testimonial.DatePublished,
                         IsActive = testimonial.IsActive,
                         CreatedBy = testimonial.CreatedBy,
                         DateCreated = testimonial.DateCreated,
                         IsShownOnHomePage = testimonial.IsShowOnHomePage,
                         RandomGuid = Guid.NewGuid()
                     });

                int recordCount = objects.Count();

                objects = objects.OrderBy(x => x.RandomGuid).Take(1);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetTopRandomTestimonial()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityTestimonial> GetRandomTestimonials()
        {
            IEnumerable<EntityTestimonial> rtnValue;

            message = string.Format("GetRandomTestimonials() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var testimonials = entity.Testimonials;

                var objects =
                    (from testimonial in testimonials
                     where testimonial.IsActive == true
                     select new EntityTestimonial
                     {
                         Id = testimonial.Id,
                         ClientId = testimonial.ClientId,
                         ClientName = testimonial.AST_Clients.Name,
                         Author = testimonial.Author,
                         PositionOfAuthor = testimonial.PositionOfAuthor,
                         Testimonial = testimonial.Testimonial,
                         Rank = testimonial.Rank,
                         DatePublished = testimonial.DatePublished,
                         IsActive = testimonial.IsActive,
                         CreatedBy = testimonial.CreatedBy,
                         DateCreated = testimonial.DateCreated,
                         IsShownOnHomePage = testimonial.IsShowOnHomePage,
                         RandomGuid = Guid.NewGuid()
                     });

                objects = objects.OrderBy(x => x.RandomGuid);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetRandomTestimonials()", ex);
            }

            return rtnValue;
        }

        public static EntityTestimonial GetTestimonial(string Id)
        {
            EntityTestimonial rtnValue;

            int testimonialId = int.Parse(Id);

            message = string.Format("GetTestimonial()  Parameters = Id: {0}", Id);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var testimonials = entity.Testimonials;

                var objects =
                    (from testimonial in testimonials
                     where testimonial.Id == testimonialId
                     select new EntityTestimonial
                     {
                         Id = testimonial.Id,
                         ClientId = testimonial.ClientId,
                         Author = testimonial.Author,
                         PositionOfAuthor = testimonial.PositionOfAuthor,
                         Testimonial = testimonial.Testimonial,
                         Rank = testimonial.Rank,
                         DatePublished = testimonial.DatePublished,
                         IsActive = testimonial.IsActive,
                         CreatedBy = testimonial.CreatedBy,
                         DateCreated = testimonial.DateCreated,
                         IsShownOnHomePage = testimonial.IsShowOnHomePage
                     }).FirstOrDefault();

                rtnValue = objects;
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetTestimonial()", ex);
            }

            return rtnValue;
        }

        public static string UpdateTestimonial(string Id, string clientId, string author, string positionOfAuthor, string testimonialDescription, string rank, DateTime datePublished, bool isActive, bool isShownOnHomePage)
        {
            var rtnValue = string.Empty;

            message = string.Format("UpdateTestimonial() Parameters = Id: {0}, clientId: {1}, author: {2}, positionOfAuthor: {3}, testimonialDescription: {4}, rank: {5}, datePublished: {6}, isActive: {7}, isShownOnHomePage: {8}", Id, clientId, author, positionOfAuthor, testimonialDescription, rank, datePublished, isActive, isShownOnHomePage);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                int testimonialId = int.Parse(Id);

                var testimonial = entity.Testimonials.FirstOrDefault(m => m.Id == testimonialId);

                testimonial.ClientId = int.Parse(clientId);
                testimonial.Author = author;
                testimonial.PositionOfAuthor = positionOfAuthor;
                testimonial.Testimonial = testimonialDescription;
                testimonial.Rank = int.Parse(rank);
                testimonial.DatePublished = datePublished;
                testimonial.IsActive = isActive;
                testimonial.IsShowOnHomePage = isShownOnHomePage;

                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("UpdateTestimonial()", ex);
            }

            return rtnValue;
        }

        public static string DeleteTestimonial(string Id)
        {
            var rtnValue = string.Empty;

            message = string.Format("DeleteTestimonial() Parameters = Id: {0}", Id.ToString());
            Log.Info(message);

            try
            {
                int testimonialId = int.Parse(Id);

                var entity = GetEntity();

                var testimonials = entity.Testimonials;

                var singleTestimonial =
                    (from testimonial in testimonials
                     where testimonial.Id == testimonialId
                     select testimonial).FirstOrDefault();

                // delete
                entity.Testimonials.DeleteObject(singleTestimonial);

                // save entity
                entity.SaveChanges();

                rtnValue = "1"; // success
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("DeleteTestimonial()", ex);
            }

            return rtnValue;
        }

        #endregion

        #region News Releases

        public static string CreateNewsRelease(string title, string description, string newsReleaseFileUrl, DateTime datePublished, bool isActive, bool isSecure, Guid createdBy)
        {
            var rtnValue = string.Empty;

            message = string.Format("CreateNewsRelease() Parameters = title: {0}, description: {1}, newsReleaseFileUrl: {2}, datePublished: {3}, isActive: {4}, isSecure: {5}, createdBy: {6}", title, description, newsReleaseFileUrl, datePublished, isActive, isSecure, createdBy);
            Log.Info(message);

            try
            {
                var news = new NewsReleases();

                news.Title = title;
                news.Description = description;
                news.NewsReleaseFileURL = newsReleaseFileUrl;
                news.DatePublished = datePublished;
                news.IsActive = isActive;
                news.IsSecure = isSecure;
                news.CreatedBy = createdBy;
                news.DateCreated = DateTime.Now;

                var entity = GetEntity();

                entity.AddToNewsReleases(news);
                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("CreateNewsRelease()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityNewsReleases> GetAllNewsReleases()
        {
            IEnumerable<EntityNewsReleases> rtnValue;

            message = string.Format("GetAllNewsReleases() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var news = entity.NewsReleases;

                var objects =
                    (from newss in news
                     select new EntityNewsReleases
                     {
                         Id = newss.Id,
                         Title = newss.Title,
                         Description = newss.Description,
                         NewsReleaseFileURL = newss.NewsReleaseFileURL,
                         DatePublished = newss.DatePublished,
                         IsActive = newss.IsActive,
                         IsSecure = newss.IsSecure,
                         CreatedBy = newss.CreatedBy,
                         DateCreated = newss.DateCreated
                     });

                objects = objects.OrderBy(x => x.Id);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllNewsReleases()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityNewsReleases> GetAllActiveNewsReleases()
        {
            IEnumerable<EntityNewsReleases> rtnValue;

            message = string.Format("GetAllActiveNewsReleases() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var news = entity.NewsReleases;

                var objects =
                    (from newss in news
                     where newss.IsActive == true
                     select new EntityNewsReleases
                     {
                         Id = newss.Id,
                         Title = newss.Title,
                         Description = newss.Description,
                         NewsReleaseFileURL = newss.NewsReleaseFileURL,
                         DatePublished = newss.DatePublished,
                         IsActive = newss.IsActive,
                         IsSecure = newss.IsSecure,
                         CreatedBy = newss.CreatedBy,
                         DateCreated = newss.DateCreated
                     });

                objects = objects.OrderBy(x => x.DateCreated);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllActiveNewsReleases()", ex);
            }

            return rtnValue;
        }

        public static EntityNewsReleases GetNewsRelease(string Id)
        {
            EntityNewsReleases rtnValue;

            int newsReleaseId = int.Parse(Id);

            message = string.Format("GetNewsRelease()  Parameters = Id: {0}", Id);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var newsReleases = entity.NewsReleases;

                var objects =
                    (from newsRelease in newsReleases
                     where newsRelease.Id == newsReleaseId
                     select new EntityNewsReleases
                     {
                         Id = newsRelease.Id,
                         Title = newsRelease.Title,
                         Description = newsRelease.Description,
                         NewsReleaseFileURL = newsRelease.NewsReleaseFileURL,
                         DatePublished = newsRelease.DatePublished,
                         IsActive = newsRelease.IsActive,
                         IsSecure = newsRelease.IsSecure,
                         CreatedBy = newsRelease.CreatedBy,
                         DateCreated = newsRelease.DateCreated
                     }).FirstOrDefault();

                rtnValue = objects;
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetNewsRelease()", ex);
            }

            return rtnValue;
        }

        public static string UpdateNewsRelease(string Id, string title, string description, string newsReleaseFileURL, DateTime datePublished, bool isActive, bool isSecure)
        {
            var rtnValue = string.Empty;

            message = string.Format("UpdateNewsRelease() Parameters = Id: {0}, title: {1}, description: {2}, newsReleaseFileURL: {3}, datePublished: {4}, isActive: {5}, isSecure: {6}", Id, title, description, newsReleaseFileURL, datePublished, isActive, isSecure);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                int newsReleaseId = int.Parse(Id);

                var newsRelease = entity.NewsReleases.FirstOrDefault(m => m.Id == newsReleaseId);

                newsRelease.Title = title;
                newsRelease.Description = description;
                newsRelease.NewsReleaseFileURL = newsReleaseFileURL;
                newsRelease.DatePublished = datePublished;
                newsRelease.IsActive = isActive;
                newsRelease.IsSecure = isSecure;

                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("UpdateNewsRelease()", ex);
            }

            return rtnValue;
        }

        public static string DeletenewsRelease(string Id)
        {
            var rtnValue = string.Empty;

            message = string.Format("DeletenewsRelease() Parameters = Id: {0}", Id.ToString());
            Log.Info(message);

            try
            {
                int newsReleaseId = int.Parse(Id);

                var entity = GetEntity();

                var newsReleases = entity.NewsReleases;

                var singleNewsRelease =
                    (from newsRelease in newsReleases
                     where newsRelease.Id == newsReleaseId
                     select newsRelease).FirstOrDefault();

                // delete
                entity.NewsReleases.DeleteObject(singleNewsRelease);

                // save entity
                entity.SaveChanges();

                rtnValue = "1"; // success
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("DeletenewsRelease()", ex);
            }

            return rtnValue;
        }

        #endregion

        #region Press Release

        public static string CreatePressRelease(string title, string description, string pressReleaseFileURL, DateTime datePublished, bool isActive, Guid createdBy)
        {
            var rtnValue = string.Empty;

            message = string.Format("CreatePressRelease() Parameters = title: {0}, description: {1}, pressReleaseFileURL: {2}, datePublished: {3}, isActive: {4}, createdBy: {5}", title, description, pressReleaseFileURL, datePublished, isActive, createdBy);
            Log.Info(message);

            try
            {
                var pressRelease = new PressReleases();

                pressRelease.Title = title;
                pressRelease.Description = description;
                pressRelease.PressReleaseFileURL = pressReleaseFileURL;
                pressRelease.DatePublished = datePublished;
                pressRelease.IsActive = isActive;
                pressRelease.CreatedBy = createdBy;
                pressRelease.DateCreated = DateTime.Now;

                var entity = GetEntity();

                entity.AddToPressReleases(pressRelease);
                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("CreatePressRelease()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityPressReleases> GetAllPressReleases()
        {
            IEnumerable<EntityPressReleases> rtnValue;

            message = string.Format("GetAllPressReleases() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var pressReleases = entity.PressReleases;

                var objects =
                    (from pressRelease in pressReleases
                     select new EntityPressReleases
                     {
                         Id = pressRelease.Id,
                         Title = pressRelease.Title,
                         Description = pressRelease.Description,
                         NewsReleaseFileURL = pressRelease.PressReleaseFileURL,
                         DatePublished = pressRelease.DatePublished,
                         IsActive = pressRelease.IsActive,
                         CreatedBy = pressRelease.CreatedBy,
                         DateCreated = pressRelease.DateCreated
                     });

                objects = objects.OrderBy(x => x.Id);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllPressReleases()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityPressReleases> GetAllActivePressReleases()
        {
            IEnumerable<EntityPressReleases> rtnValue;

            message = string.Format("GetAllActivePressReleases() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var pressReleases = entity.PressReleases;

                var objects =
                    (from pressRelease in pressReleases
                     where pressRelease.IsActive == true
                     select new EntityPressReleases
                     {
                         Id = pressRelease.Id,
                         Title = pressRelease.Title,
                         Description = pressRelease.Description,
                         NewsReleaseFileURL = pressRelease.PressReleaseFileURL,
                         DatePublished = pressRelease.DatePublished,
                         IsActive = pressRelease.IsActive,
                         CreatedBy = pressRelease.CreatedBy,
                         DateCreated = pressRelease.DateCreated
                     });

                objects = objects.OrderByDescending(x => x.DatePublished);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllActivePressReleases()", ex);
            }

            return rtnValue;
        }

        public static EntityPressReleases GetPressRelease(string Id)
        {
            EntityPressReleases rtnValue;

            int pressReleaseId = int.Parse(Id);

            message = string.Format("GetPressRelease()  Parameters = Id: {0}", Id);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var pressReleases = entity.PressReleases;

                var objects =
                    (from pressRelease in pressReleases
                     where pressRelease.Id == pressReleaseId
                     select new EntityPressReleases
                     {
                         Id = pressRelease.Id,
                         Title = pressRelease.Title,
                         Description = pressRelease.Description,
                         PressReleaseFileURL = pressRelease.PressReleaseFileURL,
                         DatePublished = pressRelease.DatePublished,
                         IsActive = pressRelease.IsActive,
                         CreatedBy = pressRelease.CreatedBy,
                         DateCreated = pressRelease.DateCreated
                     }).FirstOrDefault();

                rtnValue = objects;
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetPressRelease()", ex);
            }

            return rtnValue;
        }

        public static string UpdatePressRelease(string Id, string title, string description, string pressReleaseFileUrl, DateTime datePublished, bool isActive)
        {
            var rtnValue = string.Empty;

            message = string.Format("UpdatePressRelease() Parameters = Id: {0}, title: {1}, description: {2}, pressReleaseFileUrl: {3}, datePublished: {4}, isActive: {5}", Id, title, description, pressReleaseFileUrl, datePublished, isActive);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                int pressReleaseId = int.Parse(Id);

                var pressRelease = entity.PressReleases.FirstOrDefault(m => m.Id == pressReleaseId);

                pressRelease.Title = title;
                pressRelease.Description = description;
                pressRelease.PressReleaseFileURL = pressReleaseFileUrl;
                pressRelease.DatePublished = datePublished;
                pressRelease.IsActive = isActive;

                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("UpdatePressRelease()", ex);
            }

            return rtnValue;
        }

        public static string DeletePressRelease(string Id)
        {
            var rtnValue = string.Empty;

            message = string.Format("DeletePressRelease() Parameters = Id: {0}", Id.ToString());
            Log.Info(message);

            try
            {
                int pressReleaseId = int.Parse(Id);

                var entity = GetEntity();

                var pressReleases = entity.PressReleases;

                var singlePressRelease =
                    (from pressRelease in pressReleases
                     where pressRelease.Id == pressReleaseId
                     select pressRelease).FirstOrDefault();

                // delete
                entity.PressReleases.DeleteObject(singlePressRelease);

                // save entity
                entity.SaveChanges();

                rtnValue = "1"; // success
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("DeletePressRelease()", ex);
            }

            return rtnValue;
        }

        #endregion

        #region Admin User

        public static bool CheckAdminLogin(string userName, string password)
        {
            var rtnValue = false;

            message = string.Format("CheckAdminLogin() - Admin Login: Parameters = username: {0}, password: {1}", userName, "******");
            Log.Info(message);

            try
            {
                var entity = GetEntity();
                rtnValue = entity.Users.Any(m => m.UserName.ToUpper() == userName.Trim().ToUpper() && m.Password == password);
            }
            catch (Exception ex)
            {
                rtnValue = false;

                Log.Error("CheckAdminLogin()", ex);
            }

            return rtnValue;
        }

        #endregion

        #region Page URL

        public static string GetPageUrlId(string pageUrl)
        {
            var rtnValue = string.Empty;

            message = string.Format("GetPageUrlId() Parameters = pageUrl: {0}", pageUrl);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var record = entity.PageUrls.FirstOrDefault(e => e.PageUrl.ToUpper() == pageUrl.ToUpper());

                if (record != null)
                {
                    // record exists
                    rtnValue = record.Id.ToString(); 
                }
                else
                {
                    // record doesn't exists
                    var page = new PageUrls();

                    page.PageUrl = pageUrl.Trim();

                    entity.AddToPageUrls(page);
                    entity.SaveChanges().ToString();

                    rtnValue = page.Id.ToString();
                }              
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("GetPageUrlId()", ex);
            }

            return rtnValue;
        }

        #endregion

        #region User Activity

        public static string CreateUserActivity(Guid userId, int pageId)
        {
            var rtnValue = string.Empty;

            message = string.Format("CreateUserActivity() Parameters = userId: {0}, pageId: {1}", userId.ToString(), pageId);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var userActivity = new UserActivity();

                userActivity.UserGuid = userId;
                userActivity.PageId = pageId;
                userActivity.DateCreated = DateTime.Now;

                entity.AddToUserActivities(userActivity);
                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("CreateUserActivity()", ex);
            }

            return rtnValue;
        }

        #endregion

        #region User Cookie

        public static string LinkUserCookie(Guid userId, Guid prospectId)
        {
            var rtnValue = string.Empty;

            message = string.Format("LinkUserCookie() Parameters = userId: {0}, prospectId: {1}", userId.ToString(), prospectId);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var record = entity.UserCookies.FirstOrDefault(e => e.UserGuid == userId && e.ProspectGuid == prospectId);

                if (record != null)
                {
                    // record exists
                    rtnValue = "0";
                }
                else
                {
                    // record doesn't exists
                    var userCookie = new UserCookie();

                    userCookie.UserGuid = userId;
                    userCookie.ProspectGuid = prospectId;
                    userCookie.DateCreated = DateTime.Now;

                    entity.AddToUserCookies(userCookie);
                    rtnValue = entity.SaveChanges().ToString();
                }
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("LinkUserCookie()", ex);
            }

            return rtnValue;
        }

        #endregion

        #region Prospects

        public static string CreateUser(string firstName, string lastName, string jobTitle, string email, string company, string registeredIP, string title, string firmAum, string firmType)
        {
            var rtnValue = string.Empty;

            message = string.Format("CreateUser() Parameters = firstName: {0}, lastName: {1}, jobTitle: {2}, email: {3}, company: {4}, registeredIP: {5}, email: {6}, company: {7}, registeredIP: {8}", firstName, lastName, jobTitle, email, company, registeredIP, title, firmAum, firmType);
            Log.Info(message);

            try
            {
                var prospect = new Prospects();

                prospect.Id = Guid.NewGuid();
                prospect.FirstName = firstName.Trim();
                prospect.LastName = lastName.Trim();
                prospect.JobTitle = jobTitle.Trim();
                prospect.Email = email.Trim();
                prospect.Company = company.Trim();
                prospect.RegisteredDate = DateTime.Now;
                prospect.RegisteredIP = registeredIP.Trim();
                prospect.Title = title.Trim();
                prospect.FirmAUM = firmAum.Trim();
                prospect.FirmType = firmType.Trim();

                var entity = GetEntity();

                entity.AddToProspects(prospect);
                entity.SaveChanges();

                rtnValue = prospect.Id.ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("CreateUser()", ex);
            }

            return rtnValue;
        }

        public static string CheckEmailExistence(string email)
        {
            var rtnValue = string.Empty;

            message = string.Format("CheckEmailExistence() Parameters = email: {0}", email);
            Log.Info(message);

            try
            {
                var entity = GetEntity();
                var record = entity.Prospects.Any(m => m.Email.ToUpper() == email.Trim().ToUpper());

                if (record == true)
                {
                    rtnValue = "1"; // record exists
                }
                else
                {
                    rtnValue = "0"; // no record found
                }

                // testing purpose
                //throw new System.ArgumentException("Parameter cannot be null", "original");
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("CheckEmailExistence()", ex);

                // testing purpose
                //throw new System.ArgumentException("Parameter cannot be null", "original");
            }

            return rtnValue;
        }

        #endregion

        #region Press Release Quotes

        public static string CreatePressReleaseQuote(string author, string positionOfAuthor, string quote, string rank, DateTime datePublished, bool isActive, Guid createdBy, string company)
        {
            var rtnValue = string.Empty;

            message = string.Format("CreatePressReleaseQuote() Parameters = author: {0}, positionOfAuthor: {1}, quote: {2}, rank: {3}, datePublished: {4}, isActive: {5}, createdBy: {6}, company: {7}", author, positionOfAuthor, quote, rank, datePublished, isActive, createdBy, company);
            Log.Info(message);

            try
            {
                var pressReleaseQuote = new PressReleaseQuotes();

                pressReleaseQuote.Author = author;
                pressReleaseQuote.PositionOfAuthor = positionOfAuthor;
                pressReleaseQuote.Company = company;
                pressReleaseQuote.Quote = quote;
                pressReleaseQuote.Rank = int.Parse(rank);
                pressReleaseQuote.DatePublished = datePublished;
                pressReleaseQuote.IsActive = isActive;
                pressReleaseQuote.CreatedBy = createdBy;
                pressReleaseQuote.DateCreated = DateTime.Now;

                var entity = GetEntity();

                entity.AddToPressReleaseQuotes(pressReleaseQuote);
                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("CreatePressReleaseQuote()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityPressReleaseQuotes> GetAllPressReleaseQuotes()
        {
            IEnumerable<EntityPressReleaseQuotes> rtnValue;

            message = string.Format("GetAllPressReleaseQuotes() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var pressReleaseQuotes = entity.PressReleaseQuotes;

                var objects =
                    (from pressReleaseQuote in pressReleaseQuotes
                     select new EntityPressReleaseQuotes
                     {
                         Id = pressReleaseQuote.Id,
                         Author = pressReleaseQuote.Author,
                         Company = pressReleaseQuote.Company,
                         PositionOfAuthor = pressReleaseQuote.PositionOfAuthor,
                         Quote = pressReleaseQuote.Quote,
                         Rank = pressReleaseQuote.Rank,
                         DatePublished = pressReleaseQuote.DatePublished,
                         IsActive = pressReleaseQuote.IsActive,
                         CreatedBy = pressReleaseQuote.CreatedBy,
                         DateCreated = pressReleaseQuote.DateCreated
                     });

                objects = objects.OrderBy(x => x.Rank);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllPressReleaseQuotes()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityPressReleaseQuotes> GetAllActivePressReleaseQuotes()
        {
            IEnumerable<EntityPressReleaseQuotes> rtnValue;

            message = string.Format("GetAllActivePressReleaseQuotes() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var pressReleaseQuotes = entity.PressReleaseQuotes;

                var objects =
                    (from pressReleaseQuote in pressReleaseQuotes
                     where pressReleaseQuote.IsActive == true
                     select new EntityPressReleaseQuotes
                     {
                         Id = pressReleaseQuote.Id,
                         Author = pressReleaseQuote.Author,
                         Company = pressReleaseQuote.Company,
                         PositionOfAuthor = pressReleaseQuote.PositionOfAuthor,
                         Quote = pressReleaseQuote.Quote,
                         Rank = pressReleaseQuote.Rank,
                         DatePublished = pressReleaseQuote.DatePublished,
                         IsActive = pressReleaseQuote.IsActive,
                         CreatedBy = pressReleaseQuote.CreatedBy,
                         DateCreated = pressReleaseQuote.DateCreated
                     });

                objects = objects.OrderBy(x => x.Id);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetAllActivePressReleaseQuotes()", ex);
            }

            return rtnValue;
        }

        public static EntityPressReleaseQuotes GetPressReleaseQuote(string Id)
        {
            EntityPressReleaseQuotes rtnValue;

            int pressReleaseQuoteId = int.Parse(Id);

            message = string.Format("GetPressReleaseQuote()  Parameters = Id: {0}", Id);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var pressReleaseQuotes = entity.PressReleaseQuotes;

                var objects =
                    (from pressReleaseQuote in pressReleaseQuotes
                     where pressReleaseQuote.Id == pressReleaseQuoteId
                     select new EntityPressReleaseQuotes
                     {
                         Id = pressReleaseQuote.Id,
                         Author = pressReleaseQuote.Author,
                         Company = pressReleaseQuote.Company,
                         PositionOfAuthor = pressReleaseQuote.PositionOfAuthor,
                         Quote = pressReleaseQuote.Quote,
                         Rank = pressReleaseQuote.Rank,
                         DatePublished = pressReleaseQuote.DatePublished,
                         IsActive = pressReleaseQuote.IsActive,
                         CreatedBy = pressReleaseQuote.CreatedBy,
                         DateCreated = pressReleaseQuote.DateCreated
                     }).FirstOrDefault();

                rtnValue = objects;
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetPressReleaseQuote()", ex);
            }

            return rtnValue;
        }

        public static string UpdatePressReleaseQuote(string Id, string author, string positionOfAuthor, string quote, string rank, DateTime datePublished, bool isActive, string company)
        {
            var rtnValue = string.Empty;

            message = string.Format("UpdatePressReleaseQuote() Parameters = Id: {0}, author: {1}, positionOfAuthor: {2}, quote: {3}, rank: {4}, datePublished: {5}, isActive: {6}", Id, author, positionOfAuthor, quote, rank, datePublished, isActive);
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                int pressReleaseQuoteId = int.Parse(Id);

                var pressReleaseQuote = entity.PressReleaseQuotes.FirstOrDefault(m => m.Id == pressReleaseQuoteId);

                pressReleaseQuote.Author = author;
                pressReleaseQuote.PositionOfAuthor = positionOfAuthor;
                pressReleaseQuote.Company = company;
                pressReleaseQuote.Quote = quote;
                pressReleaseQuote.Rank = int.Parse(rank);
                pressReleaseQuote.DatePublished = datePublished;
                pressReleaseQuote.IsActive = isActive;

                rtnValue = entity.SaveChanges().ToString();
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("UpdatePressReleaseQuote()", ex);
            }

            return rtnValue;
        }

        public static string DeletePressReleaseQuote(string Id)
        {
            var rtnValue = string.Empty;

            message = string.Format("DeletePressReleaseQuote() Parameters = Id: {0}", Id.ToString());
            Log.Info(message);

            try
            {
                int pressReleaseQuoteId = int.Parse(Id);

                var entity = GetEntity();

                var pressReleaseQuotes = entity.PressReleaseQuotes;

                var singlepressReleaseQuote =
                    (from pressReleaseQuote in pressReleaseQuotes
                     where pressReleaseQuote.Id == pressReleaseQuoteId
                     select pressReleaseQuote).FirstOrDefault();

                // delete
                entity.PressReleaseQuotes.DeleteObject(singlepressReleaseQuote);

                // save entity
                entity.SaveChanges();

                rtnValue = "1"; // success
            }
            catch (Exception ex)
            {
                rtnValue = "-1"; // error

                Log.Error("DeletePressReleaseQuote()", ex);
            }

            return rtnValue;
        }

        public static IEnumerable<EntityPressReleaseQuotes> GetRandomPressReleaseQuotes()
        {
            IEnumerable<EntityPressReleaseQuotes> rtnValue;

            message = string.Format("GetRandomPressReleaseQuotes() No parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var pressReleaseQuotes = entity.PressReleaseQuotes;

                var objects =
                    (from pressReleaseQuote in pressReleaseQuotes
                     select new EntityPressReleaseQuotes
                     {
                         Id = pressReleaseQuote.Id,
                         Author = pressReleaseQuote.Author,
                         PositionOfAuthor = pressReleaseQuote.PositionOfAuthor,
                         Company = pressReleaseQuote.Company,
                         Quote = pressReleaseQuote.Quote,
                         Rank = pressReleaseQuote.Rank,
                         DatePublished = pressReleaseQuote.DatePublished,
                         IsActive = pressReleaseQuote.IsActive,
                         CreatedBy = pressReleaseQuote.CreatedBy,
                         DateCreated = pressReleaseQuote.DateCreated,
                         RandomGuid = Guid.NewGuid()
                     });

                objects = objects.OrderBy(x => x.RandomGuid);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetRandomPressReleaseQuotes()", ex);
            }

            return rtnValue;
        }

        #endregion

        #region Blog

        public static IEnumerable<EntityBlogEntry> GetLatestBlogEntry()
        {
            IEnumerable<EntityBlogEntry> rtnValue;

            message = string.Format("GetLatestBlogEntry()  Parameters = no parameters passed.");
            Log.Info(message);

            try
            {
                var entity = GetEntity();

                var blogEntries = entity.BlogEntries;

                var objects =
                    (from blogEntry in blogEntries
                     where blogEntry.IsActive == true
                     select new EntityBlogEntry
                     {
                         Id = blogEntry.Id,
                         BlogTitle = blogEntry.Title,
                         BlogDescription = blogEntry.Description,
                         BlogUrl = blogEntry.Url,
                         IsActive = blogEntry.IsActive,
                         DateCreated = blogEntry.DateCreated,
                     });

                objects = objects.OrderByDescending(x => x.DateCreated).Take(1);

                rtnValue = objects.ToArray();
            }
            catch (Exception ex)
            {
                rtnValue = null; // error

                Log.Error("GetLatestBlogEntry()", ex);
            }

            return rtnValue;
        }

        #endregion
    }
}
