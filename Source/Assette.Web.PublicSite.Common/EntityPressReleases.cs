using System;

namespace Assette.Web.PublicSite.Common
{
    [Serializable]
    public class EntityPressReleases : EntityNewsReleases
    {
        public string PressReleaseFileURL { get; set; }
    }
}
