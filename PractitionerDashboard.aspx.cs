using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;

namespace Web_Masters_IFS313E_Total_Transformation
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    lblEmail.Text = "Practitioner: " + Session["UserName"].ToString();
                }
            }
        }


        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            //Session.Clear(); // Clear the session
            //Session.Abandon(); // Abandon the session
            FormsAuthentication.SignOut(); // Sign out from forms authentication
            Response.Redirect("Index.aspx"); // Redirect to login page
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAccept_Click(object sender, EventArgs e)
        {

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Get the selected row
            GridViewRow selectedRow = GridView1.SelectedRow;

            //Handle any logic here when a row is selected
            selectedRow.BackColor = System.Drawing.Color.Blue;

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AcceptBooking")
            {
                //Get the row index from the CommandArgument property
                string commandArgument = e.CommandArgument.ToString();
                int index;
                 index = Convert.ToInt32(commandArgument);
                //Retrieve the AppointmentID from the DataKeys
                int appoitmentID = Convert.ToInt32(GridView1.DataKeys[index].Value);

                //Call the method to handle the acceptance
                AcceptRow(appoitmentID);
            }
        }
        private void AcceptRow(int appointmentID)
        {
            //Add the selected row to the booking table in the database
            AddToBookingTable(appointmentID);

            //Remove the accepted row from the Gridview
            RemoveFromDataSource(appointmentID);

            //Rebind the GridView to reflect the changes
            GridView1.DataBind();
        }
        protected void AddToBookingTable(int appointmentID)
        {
            //Implement the logic to add the row to the booking table in the database
           string connectionString = ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;
           using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Booking (AppointmentID, ServiceName, Client, Date, Time, Practitioner) SELECT AppointmentID, ServiceName, Client, Date, Time, @Practitioner FROM Appointment WHERE AppointmentID = @AppointmentID ";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@AppointmentID", appointmentID);
                    command.Parameters.AddWithValue("@Practitioner", Session["USER"].ToString());
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
        protected void RemoveFromDataSource(int appointmentID)
        {
            //Implement the logic to remove the row from the original data source
            string connectionString = ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;
            using(SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Appointment WHERE AppointmentID = @AppointmentID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@AppointmentID", appointmentID);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
           
        }

        protected void btnAcceptedBookings_Click(object sender, EventArgs e)
        {
            Response.Redirect("AcceptedBookingsPractitioner.aspx");
        }
    }
}