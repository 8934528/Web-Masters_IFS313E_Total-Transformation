using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Web_Masters_IFS313E_Total_Transformation
{
    public class Global : System.Web.HttpApplication
    {
        int usercount = 0;
        protected void Application_Start(object sender, EventArgs e)
        {
            
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            usercount++;
            Session["userscounter"] = usercount;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            usercount--;
            Session["usercount"] = usercount;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}