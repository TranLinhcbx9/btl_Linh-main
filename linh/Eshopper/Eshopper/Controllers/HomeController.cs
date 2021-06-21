using Eshopper.Areas.Admin.Controllers;
using Eshopper.Models.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Eshopper.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var dao = new ProductDao();
            ViewBag.NewProducts = dao.ListNewProduct(3);
            ViewBag.ListPhuKiens = dao.ListPhuKiens(3);
            ViewBag.ListMacBooks = dao.ListMacBooks(3);
            ViewBag.ListAppleWatchs = dao.ListAppleWatchs(3);
            ViewBag.ListIpads = dao.ListIpads(3);
            return View();
        }

       
    }
}