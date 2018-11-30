using System;

namespace Assette.Web.PublicSite.Common
{
    [Serializable]
    public class EntityNewsReleases : EntityTestimonial
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public string NewsReleaseFileURL { get; set; }
        public bool IsSecure { get; set; }
    }
}
