using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Web_Masters_IFS313E_Total_Transformation
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Check if the service name is provided in the query string
                if (Request.QueryString["service"] != null)
                {
                    string serviceName = Request.QueryString["service"];
                    lblServiceName.Text = serviceName;

                    // Set the image based on the service name
                    imgService.ImageUrl = GetImagePath(serviceName);
                }
                if (Session["USER"] != null)
                {
                    txtEmailAddress.Text = Session["USER"].ToString();
                }
            }
        }

        private string GetImagePath(string serviceName)
        {
            // Implement logic to retrieve image path from the database or use hardcoded paths
            switch (serviceName)
            {
                //Barbering images in the booking page
                case "Brush Cut":
                    return "~/IMAGES/Barbering/bursh.jpg";
                case "Low Fade":
                    return "~/IMAGES/Barbering/cut2.jpg";
                case "Taper Fade":
                    return "~/IMAGES/Barbering/cut3.jpg";
                case "Mohawk":
                    return "~/IMAGES/Barbering/cut4.jpg";
                case "Low Fade Waves":
                    return "~/IMAGES/Barbering/cut5.jpg";
                case "Dreaded Mid Fade":
                    return "~/IMAGES/Barbering/cut6.jpg";
                case "High Fade":
                    return "~/IMAGES/Barbering/cut7.jpg";
                case "Cut & Dye":
                    return "~/IMAGES/Barbering/cut8.jpg";
                case "Side Part":
                    return "~/IMAGES/Barbering/cut9.jpg";

                    //Nails in the booking page
                case "Box Nails":
                    return "~/IMAGES/Nails/Nail1.jpg";
                case "Coffin Nails":
                    return "~/IMAGES/Nails/Nail2.jpg";
                case "French Nails":
                    return "~/IMAGES/Nails/Nail3.jpg";
                case "White Pedicure":
                    return "~/IMAGES/Nails/Nail4.jpg";
                case "Pink Pedicure":
                    return "~/IMAGES/Nails/Nail5.jpg";
                case "Stiletto Nails":
                    return "~/IMAGES/Nails/Nail7.jpg";
                case "Plain Acrylic Nails":
                    return "~/IMAGES/Nails/Nail8.jpg";
                case "Gel Overlay Nails":
                    return "~/IMAGES/Nails/Nail9.jpg";
                case "Clear Gel Nails":
                    return "~/IMAGES/Nails/Nail10.jpg";

                    //Make Up in the booking page
                case "Glamorous Look":
                    return "~/IMAGES/MakeUp/make2.jpg";
                case "Natural Glam":
                    return "~/IMAGES/MakeUp/make4.jpg";
                case "Full Facebeat":
                    return "~/IMAGES/MakeUp/make6.jpg";
                case "Boho Look":
                    return "~/IMAGES/MakeUp/make8.jpg";
                case "Vintage Look":
                    return "~/IMAGES/MakeUp/make1.jpg";
                case "Full Glam":
                    return "~/IMAGES/MakeUp/make3.jpg";
                case "Soft Glam":
                    return "~/IMAGES/MakeUp/make5.jpg";
                case "Bold Look":
                    return "~/IMAGES/MakeUp/make7.jpg";
                case "Bridal Look":
                    return "~/IMAGES/MakeUp/make9.jpg";

                //HairAndStyling in the booking page
                case "Pixie Cut":
                    return "~/IMAGES/Hair And Styling/style1.jpg";
                case "Cut and Snoopy":
                    return "~/IMAGES/Hair And Styling/style3.jpg";
                case "Knotless Braids":
                    return "~/IMAGES/Hair And Styling/style5.jpg";
                case "Cut and Braid":
                    return "~/IMAGES/Hair And Styling/style2.jpg";
                case "Block Snoopy":
                    return "~/IMAGES/Hair And Styling/style4.jpg";
                case "Straight Back":
                    return "~/IMAGES/Hair And Styling/style6.jpg";
                case "Fulani Braids":
                    return "~/IMAGES/Hair And Styling/style9.jpg";
                case "Straight Up":
                    return "~/IMAGES/Hair And Styling/style7.jpg";
                case "Ponytail":
                    return "~/IMAGES/Hair And Styling/style8.jpg";

                default:
                    return "~/IMAGES/default.jpg";

            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            string serviceName = lblServiceName.Text;
            string userEmail = txtEmailAddress.Text;
            string date = Request.Form["booking-date"];
            string time = Request.Form["booking-time"];

            if (string.IsNullOrEmpty(serviceName) || string.IsNullOrEmpty(userEmail) || string.IsNullOrEmpty(date) || string.IsNullOrEmpty(time))
            {
                // Handle validation errors
                Response.Write("<script>alert('Please ensure all fields are filled out.');</script>");
                return;
            }


            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;

            // Insert the appointment details into the database
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Appointment ([ServiceName], [Client], [Date], [Time]) VALUES (@service, @Client, @Date, @Time)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@service", serviceName);
                cmd.Parameters.AddWithValue("@Client", userEmail);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@Time", time);

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }

            // Redirect to payment page
            Response.Redirect("AfterBooking.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientDashboard.aspx");
        }
    }
}