using Eshopper.Models.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Eshopper.Models
{
    [Serializable]
    public class CartItem
    {
        public SanPham Product { get; set; }
        public int Quantity { get; set; }
    }
}