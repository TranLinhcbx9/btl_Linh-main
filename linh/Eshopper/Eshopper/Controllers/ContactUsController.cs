using Eshopper.Areas.Admin.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Eshopper.Controllers
{
    public class ContactUsController : BaseController
    {
        // GET: ContactUs
        public ActionResult Index()
        {
            return View();
        }
    }
}