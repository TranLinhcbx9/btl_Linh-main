using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eshopper.Common
{
    [Serializable]
    public class UserLogin
    {
        public string UserID { get; set; }
        public string UserName { get; set; }
    }
}