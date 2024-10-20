using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace Web_Masters_IFS313E_Total_Transformation
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    lblEmail.Text = "Client: " + Session["UserName"].ToString();
                }
            }

        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Session.Clear(); // Clear the session
            Session.Abandon(); // Abandon the session
            FormsAuthentication.SignOut(); // Sign out from forms authentication
            Response.Redirect("Index.aspx"); // Redirect to login page;
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnAccepted_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnView_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ViewBookingsClient.aspx");
        }

        protected void btnAccepted_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AcceptedBookingsClient.aspx");
        }
    }
}