using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace Web_Masters_IFS313E_Total_Transformation
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string serviceName = txtSevName.Text;
                decimal price = Convert.ToDecimal(txtPrice.Text);

                string connectionString = ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    string sql = "INSERT INTO Service (ServicesName, Price) VALUES (@ServiceName, @Price)";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@ServiceName", serviceName);
                    cmd.Parameters.AddWithValue("@Price", price);
                    int a = cmd.ExecuteNonQuery();
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message.ToString());
            }
            
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }
    }
}