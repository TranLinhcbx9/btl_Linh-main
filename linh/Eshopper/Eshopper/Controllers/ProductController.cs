using Eshopper.Areas.Admin.Controllers;
using Eshopper.Models.Dao;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Eshopper.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index(int? page, string searchString = "")
        {
            var dao = new ProductDao();
            var items = dao.ListAllProduct();
            if (searchString != string.Empty)
            {
                items = items.Where(x => x.TenSP.ToLower().Trim().Contains(searchString.ToLower().Trim())).ToList();
            }
            var pageNumber = page == null ? 1 : page.Value;
            var data = items.ToPagedList(pageNumber, 9);
            return View(data);
        }
        [ChildActionOnly]
        public PartialViewResult ProductCategory()
        {
            var model = new ProductCategoryDao().ListAll();
            return PartialView(model);
        }
        public ActionResult Detail(string id)
        {
            var product = new ProductDao().ViewDetail(id);
            ViewBag.Product = product;
            return View(product);
        }
        
    }
}