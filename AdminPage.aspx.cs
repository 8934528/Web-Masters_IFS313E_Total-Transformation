using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Web_Masters_IFS313E_Total_Transformation
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Counting online users
            Labelcounter.Text = "Number Of Online Users:" + Session["userscounter"].ToString();

            // Connection string
            string connectionString = ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;

            // Query to count clients
            string clientCountQuery = @"SELECT COUNT(ClientID) FROM [dbo].[Client]";

            // Query to count practitioners
            string practitionerCountQuery = @"SELECT COUNT(PractitionerID) FROM [dbo].[Practitioner]";

            // Query to count services
            string ServiceCountQuery = @"SELECT COUNT(ServicesID) FROM [dbo].[Service]";

            // Query to count booking
            string BookingCountQuery = @"SELECT COUNT(AppointmentID) FROM [dbo].[Booking]";

            // Initialize counts
            int clientCount = 0;
            int practitionerCount = 0;
            int serviceCount = 0;
            int bookingCount = 0;

            using (SqlConnection connect = new SqlConnection(connectionString))
            {
                // Open the connection
                connect.Open();

                // Create SqlCommand objects for counting clients and practitioners
                using (SqlCommand clientCmd = new SqlCommand(clientCountQuery, connect))
                using (SqlCommand practitionerCmd = new SqlCommand(practitionerCountQuery, connect))
                using (SqlCommand serviceCmd = new SqlCommand(ServiceCountQuery, connect))
                using (SqlCommand bookingCmd = new SqlCommand(BookingCountQuery, connect))
                {
                    // Execute the queries and retrieve counts
                    clientCount = Convert.ToInt32(clientCmd.ExecuteScalar());
                    practitionerCount = Convert.ToInt32(practitionerCmd.ExecuteScalar());
                    serviceCount = Convert.ToInt32(serviceCmd.ExecuteScalar());
                    bookingCount = Convert.ToInt32(bookingCmd.ExecuteScalar());
                }
            }

            // Display counts on the page
            ltTotalClients.Text = clientCount.ToString();
            ltTotalPractitioner.Text = practitionerCount.ToString();
            ltTotalService.Text = serviceCount.ToString();
            lblBooking.Text = bookingCount.ToString();
        }

        protected void btnAdPractitioner_Click(object sender, EventArgs e)
        {

        }

        protected void btnAdBookings_Click(object sender, EventArgs e)
        {
            Response.Redirect("TotalBookings.aspx");
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}