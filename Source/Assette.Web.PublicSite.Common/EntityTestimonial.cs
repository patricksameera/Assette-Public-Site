using System;

namespace Assette.Web.PublicSite.Common
{
    [Serializable]
    public class EntityTestimonial : EntityCaseStudy
    {
        public string Testimonial { get; set; }
        public bool IsShownOnHomePage { get; set; }
    }
}
