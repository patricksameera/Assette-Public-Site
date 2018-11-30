using System;

namespace Assette.Web.PublicSite.Common
{
    [Serializable]
    public class EntityPressReleaseQuotes : EntityTestimonial
    {
        public string Quote { get; set; }
        public string Company { get; set; }
    }
}
