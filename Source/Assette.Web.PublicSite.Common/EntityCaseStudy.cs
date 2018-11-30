using System;

namespace Assette.Web.PublicSite.Common
{
    [Serializable]
    public class EntityCaseStudy : EntityClient
    {
        public int ClientId { get; set; }
        public string Author { get; set; }
        public string PositionOfAuthor { get; set; }
        public string Summary { get; set; }
        public string QuotedText { get; set; }
        public string CaseStudyFileURL { get; set; }
        public DateTime DatePublished { get; set; }
    }
}
