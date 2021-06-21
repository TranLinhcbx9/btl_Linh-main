using Eshopper.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eshopper.Models.Dao
{

    public class ProductCategoryDao
    {
        DBModels db = null;
        public ProductCategoryDao()
        {
            db = new DBModels();
        }

        public List<LoaiSP> ListAll()
        {
            return db.LoaiSPs.ToList();
        }
    }
}