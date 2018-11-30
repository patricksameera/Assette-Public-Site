using System;

namespace Assette.Web.PublicSite.Common
{
    [Serializable]
    public class EntityClient
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string AUM { get; set; }
        public string WebURL { get; set; }
        public string LogoURL { get; set; }
        public int Rank { get; set; }
        public bool IsActive { get; set; }
        public Guid CreatedBy { get; set; }
        public DateTime DateCreated { get; set; }
        public Guid RandomGuid { get; set; }
        public string ClientName { get; set; }
    }
}
