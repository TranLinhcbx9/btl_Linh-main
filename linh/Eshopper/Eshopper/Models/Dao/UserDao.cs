using Eshopper.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eshopper.Models.Dao
{
    public class UserDao
    {
        DBModels db = null;
        public UserDao()
        {
            db = new DBModels();
        }

        public string Insert(NguoiDung user)
        {
            db.NguoiDungs.Add(user);
            db.SaveChanges();
            return user.MaND;
        }

        public NguoiDung GetById(string userName)
        {
            return db.NguoiDungs.SingleOrDefault(x => x.UserName == userName);
        }

        public bool Login(string userName, string passWord)
        {
            var result = db.NguoiDungs.Count(x => x.UserName == userName && x.MatKhau == passWord);
            if (result > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}