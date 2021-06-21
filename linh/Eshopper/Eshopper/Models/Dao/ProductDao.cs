using Eshopper.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eshopper.Models.Dao
{
    public class ProductDao
    {
        DBModels db = null;
        public ProductDao()
        {
            db = new DBModels();
        }

        public List<SanPham> ListNewProduct(int top)
        {

            return db.SanPhams.Where(x=>x.MaLoaiSP.Trim().Contains("1")).OrderByDescending(x => x.DonGia).Take(top).ToList();
        }


        public List<SanPham> ListMacBooks(int top)
        {
            return db.SanPhams.Where(x => x.MaLoaiSP.Trim().Contains("3")).OrderByDescending(x => x.DonGia).Take(top).ToList();
        }
        public List<SanPham> ListPhuKiens(int top)
        {
            return db.SanPhams.Where(x => x.MaLoaiSP.Trim().Contains("2")).OrderByDescending(x => x.DonGia).Take(top).ToList();
        }
        public List<SanPham> ListAppleWatchs(int top)
        {
            return db.SanPhams.Where(x => x.MaLoaiSP.Trim().Contains("4")).OrderByDescending(x => x.DonGia).Take(top).ToList();
        }
        public List<SanPham> ListIpads(int top)
        {
            return db.SanPhams.Where(x => x.MaLoaiSP.Trim().Contains("5")).OrderByDescending(x => x.DonGia).Take(top).ToList();
        }
        //public List<SanPham> ListAllProduct(ref int totalRecord, int pageIndex = 1, int pageSize = 9)
        //{
        //    totalRecord = db.SanPhams.ToList().Count();
        //    var model = db.SanPhams.OrderByDescending(x=>x.MaSP).Skip((pageIndex-1) * pageSize).Take(pageSize).ToList();
        //    return model;
        //}
        public List<SanPham> ListAllProduct()
        {
            return db.SanPhams.OrderByDescending(x=>x.DonGia).ToList();
        }
        public SanPham ViewDetail(string id)
        {
            return db.SanPhams.Find(id);
        }
    }
}