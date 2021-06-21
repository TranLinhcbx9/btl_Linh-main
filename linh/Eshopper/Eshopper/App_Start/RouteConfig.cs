using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Eshopper
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

            routes.MapRoute(
                name: "Add Cart",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Card", action = "AddItem", id = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "Indeex Cart",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Card", action = "Index", id = UrlParameter.Optional }
            );
            routes.MapRoute(
               name: "Payment",
               url: "{controller}/{action}/{id}",
               defaults: new { controller = "Card", action = "Payment", id = UrlParameter.Optional }
           );
        }
    }
}
