using Eshopper.Areas.Models;
using Eshopper.Common;
using Eshopper.Models.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Eshopper.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        public object CommonConstants { get; private set; }

        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login(LoginModel login)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                var result = dao.Login(login.UserName, Encryptor.MD5Hash(login.PassWord));
                if (result)
                {
                    var user = dao.GetById(login.UserName);
                    var userSession = new UserLogin();
                    userSession.UserName = user.UserName;
                    userSession.UserID = user.MaND;
                    Session.Add(CommonConstant.USER_SESSION, userSession);

                    return RedirectToAction("Index", "SanPhams");
                }
                else
                {
                    ModelState.AddModelError("", "Đăng nhập không đúng!");

                }

            }
            return View("Index");
        }
    }
}