using System;

namespace Assette.Web.PublicSite.Common
{
    [Serializable]
    public class EntityBlogEntry : EntityClient
    {
        public string BlogTitle { get; set; }
        public string BlogDescription { get; set; }
        public string BlogUrl { get; set; }
    }
}
