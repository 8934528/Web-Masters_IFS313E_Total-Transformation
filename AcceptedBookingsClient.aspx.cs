using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Masters_IFS313E_Total_Transformation
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientDashboard.aspx");
        }

        protected void btnMakePayment_Click(object sender, EventArgs e)
        {
            {
                // Check if a row is selected in the GridView
                if (GridView1.SelectedIndex >= 0)
                {
                    // Get the selected row
                    GridViewRow selectedRow = GridView1.SelectedRow;

                    // Extract data from the selected row
                    string serviceName = selectedRow.Cells[2].Text; // Index of ServiceName column
                    string client = selectedRow.Cells[3].Text; // Index of Client column
                    string date = selectedRow.Cells[4].Text; // Index of Date column
                    string time = selectedRow.Cells[5].Text; // Index of Time column
                    string practitioner = selectedRow.Cells[6].Text; // Index of Practitioner column

                    // Store data in session to pass to payment.aspx page
                    Session["ServiceName"] = serviceName;
                    Session["Client"] = client;
                    Session["Date"] = date;
                    Session["Time"] = time;
                    Session["Practitioner"] = practitioner;

                    // Redirect to payment page
                    Response.Redirect("payment.aspx");
                }
                else
                {
                    // Display error message if no row is selected
                    // You can customize this message according to your requirement
                    Response.Write("<script>alert('Please select a booking to make payment.')</script>");
                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}