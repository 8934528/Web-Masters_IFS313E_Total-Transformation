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
    public partial class WebForm23 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UpName"] != null || Session["UpSurname"] != null || Session["UpEmail"] != null || Session["UpResidence"] != null || Session["UpPassword"] != null)
                {
                    txtName.Text = Session["UpName"].ToString();
                    txtSurname.Text = Session["UpSurname"].ToString();
                    txtEmail.Text = Session["UpEmail"].ToString();
                    txtResidence.Text = Session["UpResidence"].ToString();
                }
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = Session["UpName"].ToString();
                string Surname = Session["UpSurname"].ToString();
                string Email = Session["UpEmail"].ToString();
                string Residence = Session["UpResidence"].ToString();
                string Password = Session["UpPassword"].ToString();
                string ServiceOffer = DropDownList1.SelectedValue;

                string connectionString = ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;

                using (SqlConnection connect = new SqlConnection(connectionString))
                {
                    connect.Open();

                    string query = $@"INSERT INTO [dbo].[Practitioner] ([Name], [Surname], [Email], [Residence], [Password], [ServiceOffer]) 
                                     VALUES (@Name, @Surname, @Email, @Residence, @Password, @ServiceOffer)";

                    using (SqlCommand cmd = new SqlCommand(query, connect))
                    {
                        cmd.Parameters.AddWithValue("@Name", Name);
                        cmd.Parameters.AddWithValue("@Surname", Surname);
                        cmd.Parameters.AddWithValue("@Email", Email);
                        cmd.Parameters.AddWithValue("@Residence", Residence);
                        cmd.Parameters.AddWithValue("@Password", Password);
                        cmd.Parameters.AddWithValue("@ServiceOffer", ServiceOffer);

                        cmd.ExecuteNonQuery();
                    }
                }

                // Display success message and redirect to SignIn page
                Response.Write("<script>alert('User is registered successfully')</script>");
                Response.Redirect("SignIn.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred while registering the user')</script>");
                Console.WriteLine("Error: " + ex.Message);
            }
        }
    }
}