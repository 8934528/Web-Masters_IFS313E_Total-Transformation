using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Masters_IFS313E_Total_Transformation
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOkay_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientDashboard.aspx");
        }
    }
}