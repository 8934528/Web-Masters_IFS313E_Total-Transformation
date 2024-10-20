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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn1_Click(object sender, EventArgs e)
        {
            // Check if any of the required textboxes are empty
            if (string.IsNullOrEmpty(txtEmail1.Text) || string.IsNullOrEmpty(txtPassword1.Text))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please fill in all the fields');", true);
                return;
            }

            string EMAIL = txtEmail1.Text;
            string PASSWORD = txtPassword1.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;

            // Check the user's credentials in each table
            string[] userTables = { "Client", "Practitioner", "Admin" };
            bool userFound = false;

            using (SqlConnection connect = new SqlConnection(connectionString))
            {
                connect.Open();

                foreach (string tableName in userTables)
                {
                    string query = $@"SELECT Email, Name FROM [dbo].[{tableName}] WHERE Email = @Email AND Password = @Password";

                    using (SqlCommand cmd = new SqlCommand(query, connect))
                    {
                        cmd.Parameters.AddWithValue("@Email", EMAIL);
                        cmd.Parameters.AddWithValue("@Password", PASSWORD);

                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.HasRows)
                        {
                            reader.Read();
                            string userName = reader["Name"].ToString();
                            Session["UserName"] = userName;
                            Session["USER"] = EMAIL;

                            // Redirect based on user type
                            if (tableName == "Client")
                            {
                                Response.Redirect("ClientDashboard.aspx");
                            }
                            else if (tableName == "Practitioner")
                            {
                                Response.Redirect("PractitionerDashboard.aspx");
                            }
                            else if (tableName == "Admin")
                            {
                                Response.Redirect("AdminPage.aspx");
                            }

                            userFound = true;
                            break;
                        }

                        reader.Close();
                    }
                }
            }

            if (!userFound)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid email or password.');", true);
            }
        }
    }
}