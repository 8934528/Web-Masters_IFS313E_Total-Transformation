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
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadServiceCounts();
                LoadPractitionerNames();
            }
        }

        private void LoadServiceCounts()
        {
            // Connection string
            string connectionString = ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;

            // Queries to count practitioners based on ServiceOffer
            string HairAndStylingCountQuery = @"SELECT COUNT(PractitionerID) FROM [Practitioner] WHERE ServiceOffer = 'Hair & Styling'";
            string BarberingCountQuery = @"SELECT COUNT(PractitionerID) FROM [Practitioner] WHERE ServiceOffer = 'Barbering'";
            string MakeUpCountQuery = @"SELECT COUNT(PractitionerID) FROM [Practitioner] WHERE ServiceOffer = 'Make-Up'";
            string NailsCountQuery = @"SELECT COUNT(PractitionerID) FROM [Practitioner] WHERE ServiceOffer = 'Nails'";

            int HairAndStyling = 0;
            int Barbering = 0;
            int MakeUp = 0;
            int Nails = 0;

            using (SqlConnection connect = new SqlConnection(connectionString))
            {
                // Open the connection
                connect.Open();

                // Create SqlCommand objects for each service count
                using (SqlCommand cmdHairAndStyling = new SqlCommand(HairAndStylingCountQuery, connect))
                using (SqlCommand cmdBarbering = new SqlCommand(BarberingCountQuery, connect))
                using (SqlCommand cmdMakeUp = new SqlCommand(MakeUpCountQuery, connect))
                using (SqlCommand cmdNails = new SqlCommand(NailsCountQuery, connect))
                {
                    // Execute the queries and retrieve counts
                    HairAndStyling = Convert.ToInt32(cmdHairAndStyling.ExecuteScalar());
                    Barbering = Convert.ToInt32(cmdBarbering.ExecuteScalar());
                    MakeUp = Convert.ToInt32(cmdMakeUp.ExecuteScalar());
                    Nails = Convert.ToInt32(cmdNails.ExecuteScalar());
                }
            }

            // Set the counts to the respective labels
            lblHairAndStyle.Text = HairAndStyling.ToString();
            lblBarbering.Text = Barbering.ToString();
            lblMakUp.Text = MakeUp.ToString();
            lblNails.Text = Nails.ToString();
        }

        private void LoadPractitionerNames()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;

            string HairAndStylingQuery = @"SELECT Name, Surname FROM [Practitioner] WHERE ServiceOffer = 'Hair & Styling'";
            string BarberingQuery = @"SELECT Name, Surname FROM [Practitioner] WHERE ServiceOffer = 'Barbering'";
            string MakeUpQuery = @"SELECT Name, Surname FROM [Practitioner] WHERE ServiceOffer = 'Make-Up'";
            string NailsQuery = @"SELECT Name, Surname FROM [Practitioner] WHERE ServiceOffer = 'Nails'";

            using (SqlConnection connect = new SqlConnection(connectionString))
            {
                connect.Open();

                using (SqlCommand cmdHairAndStyling = new SqlCommand(HairAndStylingQuery, connect))
                using (SqlCommand cmdBarbering = new SqlCommand(BarberingQuery, connect))
                using (SqlCommand cmdMakeUp = new SqlCommand(MakeUpQuery, connect))
                using (SqlCommand cmdNails = new SqlCommand(NailsQuery, connect))
                {
                    lvHairAndStyle.DataSource = cmdHairAndStyling.ExecuteReader();
                    lvHairAndStyle.DataBind();
                    cmdHairAndStyling.Connection.Close();
                    cmdHairAndStyling.Connection.Open();

                    lvBarbering.DataSource = cmdBarbering.ExecuteReader();
                    lvBarbering.DataBind();
                    cmdBarbering.Connection.Close();
                    cmdBarbering.Connection.Open();

                    lvMakUp.DataSource = cmdMakeUp.ExecuteReader();
                    lvMakUp.DataBind();
                    cmdMakeUp.Connection.Close();
                    cmdMakeUp.Connection.Open();

                    lvNails.DataSource = cmdNails.ExecuteReader();
                    lvNails.DataBind();
                }
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}