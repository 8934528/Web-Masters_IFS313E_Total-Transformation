﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Masters_IFS313E_Total_Transformation
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBack2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientDashboard.aspx");
        }
    }
}