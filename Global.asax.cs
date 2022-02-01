using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Microsoft.AspNet.FriendlyUrls;

namespace MedicareHopitalLimite_Iqramul
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteTable.Routes.EnableFriendlyUrls();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            //BundleConfig.RegisterBundles(BundleTable.Bundles);
            

            FriendlyRoutes(RouteTable.Routes);
        }

        void FriendlyRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(
                routeName: "DepartmentInfo",
                routeUrl: "Department/{0}/DepartmentInfo",
                physicalFile: "~/Department/DepartmentInfo.aspx"
                );

            routes.MapPageRoute(
                routeName: "DoctorInfo",
                routeUrl: "Doctor/{0}/DoctorInfo",
                physicalFile: "~/Doctors/DoctorInfo.aspx"
                );

            routes.MapPageRoute(
                routeName: "Appointment",
                routeUrl: "Appointment/{0}/AppointmentInfo",
                physicalFile: "~/Appointment/Appointment.aspx"
                );
            routes.MapPageRoute(
                routeName: "PatientInfo",
                routeUrl: "Patient/{0}/PatientInfo",
                physicalFile: "~/Patient/PatientInfo.aspx"
                );
            routes.MapPageRoute(
                routeName: "AdmitInfo",
                routeUrl: "AdmitInfo/AdmitInfo",
                physicalFile: "~/AdmitInfo/AdmitInfo.aspx"
                );
        }
    }
}