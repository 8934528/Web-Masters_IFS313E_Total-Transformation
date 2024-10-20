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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp2_Click(object sender, EventArgs e)
        {
        }

        protected void btnSignUp2_Click1(object sender, EventArgs e)
        {
            // Check if any of the required textboxes are empty
            if (string.IsNullOrEmpty(txtName2.Text) || string.IsNullOrEmpty(txtSurname2.Text) || string.IsNullOrEmpty(txtEmail2.Text) || string.IsNullOrEmpty(txtResidence2.Text) || string.IsNullOrEmpty(txtPassword2.Text) || string.IsNullOrEmpty(txtConPassword2.Text) || DropDownList1.SelectedValue == "")
            {
                Response.Write("<script>alert('Please fill in all the fields and select user type')</script>");
                return;
            }

            // Check if passwords match
            if (txtPassword2.Text != txtConPassword2.Text)
            {
                Response.Write("<script>alert('Passwords do not match')</script>");
                return;
            }

            if (DropDownList1.SelectedValue == "Client")
            {
                // Save to database
                try
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;

                    using (SqlConnection connect = new SqlConnection(connectionString))
                    {
                        connect.Open();

                        string query = $@"INSERT INTO [dbo].[Client] ([Name], [Surname], [Email], [Residence], [Password]) VALUES (@Name, @Surname, @Email, @Residence, @Password)";

                        using (SqlCommand cmd = new SqlCommand(query, connect))
                        {
                            cmd.Parameters.AddWithValue("@Name", txtName2.Text);
                            cmd.Parameters.AddWithValue("@Surname", txtSurname2.Text);
                            cmd.Parameters.AddWithValue("@Email", txtEmail2.Text);
                            cmd.Parameters.AddWithValue("@Residence", txtResidence2.Text);
                            cmd.Parameters.AddWithValue("@Password", txtPassword2.Text);

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
            else if (DropDownList1.SelectedValue == "Practitioner")
            {
                // Store details in session objects
                Session["UpName"] = txtName2.Text;
                Session["UpSurname"] = txtSurname2.Text;
                Session["UpEmail"] = txtEmail2.Text;
                Session["UpResidence"] = txtResidence2.Text;
                Session["UpPassword"] = txtPassword2.Text;

                // Redirect to Profile page
                Response.Redirect("Profile.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid user type selected')</script>");
            }
        }

        protected void btnCancel2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}