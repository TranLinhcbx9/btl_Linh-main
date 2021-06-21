﻿using Eshopper.Models.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Eshopper.Areas.Admin.Controllers
{
    public class QuanLyPhieuNhapController : BaseController
    {
        private DBModels _db = new DBModels(); 
        // GET: Admin/QuanLyPhieuNhap
        public ActionResult Index(int? page)
        {
            var item = _db.PhieuNhaps.ToList();
            var pageNumber = page == null ? 1 : page.Value;
            var data = item.ToPagedList(pageNumber, 5);
            return View(data);
        }

        [HttpGet]
        public ActionResult CreateForNhaCC()
        { 
            ViewBag.SanPhams = _db.SanPhams.ToList();
            ViewBag.NhaCungCaps = _db.NhaCCs.ToList();
            return View();
        }
        [HttpPost]
        public ActionResult CreateForNhaCC(PhieuNhap model, IEnumerable<CTPhieuNhap> ctPhieuNhaps)
        {
            try
            {
                var maPN = getMaPhieuNhap();
                model.MaPN = maPN;
                model.NgayNhap = DateTime.Now;
                _db.PhieuNhaps.Add(model);
                if(ctPhieuNhaps == null)
                {
                    return Content("<script language='javascript' type='text/javascript'>alert('Không được thêm phiếu nhập trống');</script>");
                }
                else
                {
                    foreach (var item in ctPhieuNhaps)
                    {
                        item.MaPN = maPN;
                        var product = _db.SanPhams.Find(item.MaSP);
                        if (product != null)
                        {
                            product.SoLuong += item.SoLuong;
                        }
                    }
                    _db.CTPhieuNhaps.AddRange(ctPhieuNhaps);
                    _db.SaveChanges();
                    //return Json(true, JsonRequestBehavior.AllowGet);
                    return RedirectToAction("Index");
                }
                
            }
            catch
            {
                ViewBag.SanPhams = _db.SanPhams.ToList();
                ViewBag.NhaCungCaps = _db.NhaCCs.ToList();

                return View(model);
            }
        }
        string getMaPhieuNhap()
        {
            string maPN = "pn";
            for(int i = 1; i< 100000000; i++)
            {
                if(i < 10)
                {
                    maPN = "PN0000000" + i.ToString();
                    var item = _db.PhieuNhaps.Find(maPN);
                    if(item == null)
                    {
                        return maPN;
                    }
                }
                else
                {
                    if (i < 100)
                    {
                        maPN = "PN000000" + i.ToString();
                        var item = _db.PhieuNhaps.Find(maPN);
                        if (item == null)
                        {
                            return maPN;
                        }
                    }
                    else
                    {
                        if (i < 1000)
                        {
                            maPN = "PN00000" + i.ToString();
                            var item = _db.PhieuNhaps.Find(maPN);
                            if (item == null)
                            {
                                return maPN;
                            }
                        }
                        else
                        {
                            if (i < 10000)
                            {
                                maPN = "PN0000" + i.ToString();
                                var item = _db.PhieuNhaps.Find(maPN);
                                if (item == null)
                                {
                                    return maPN;
                                }
                            }
                            else
                            {
                                if (i < 100000)
                                {
                                    maPN = "PN000" + i.ToString();
                                    var item = _db.PhieuNhaps.Find(maPN);
                                    if (item == null)
                                    {
                                        return maPN;
                                    }
                                }
                            }
                        }
                    }
                }
            }

            return maPN;
        }

        [HttpGet]
        public ActionResult Update(string maPN)
        {
            var model = _db.PhieuNhaps.Find(maPN);
            ViewBag.SanPhams = _db.SanPhams.ToList();
            ViewBag.NhaCungCaps = _db.NhaCCs.ToList();
            return View(model);
        }

        [HttpPost]
        public ActionResult Update(PhieuNhap model, IEnumerable<CTPhieuNhap> ctPhieuNhaps)
        {
            try
            {
                model.NgayNhap = DateTime.Now;
                _db.PhieuNhaps.AddOrUpdate(model);

                foreach (var item in ctPhieuNhaps)
                {
                    item.MaPN = model.MaPN;
                    
                    var product = _db.SanPhams.Find(item.MaSP);
                    if (product != null)
                    {
                        product.SoLuong += item.SoLuong;
                    }
                    _db.CTPhieuNhaps.AddOrUpdate(item);
                }
                _db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                ViewBag.SanPhams = _db.SanPhams.ToList();
                ViewBag.NhaCungCaps = _db.NhaCCs.ToList();

                return View(model);
            }
        }



        [HttpGet]
        public ActionResult Details(string maPN)
        {
            var model = _db.PhieuNhaps.Find(maPN);
            return View(model);
        }



        [HttpPost]
        public ActionResult DeletePhieuNhap(string maPN)
        {
            var model = _db.PhieuNhaps.Find(maPN);
            if (model == null) return Json(false);
            if (model.CTPhieuNhaps.Count() > 0)
            {
                foreach(var item in model.CTPhieuNhaps)
                {
                    var id = item.MaSP.Trim();
                    var sp = _db.SanPhams.Find(id);
                    sp.SoLuong -= item.SoLuong;
                }
                _db.CTPhieuNhaps.RemoveRange(model.CTPhieuNhaps);
            }
            _db.PhieuNhaps.Remove(model);
            _db.SaveChanges();
            return Json(true);
        }
    }
}