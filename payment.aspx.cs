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
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["ServiceName"] != null)
                {
                    lblServiceName.Text = Session["ServiceName"].ToString();
                }
                if (Session["Client"] != null)
                {
                    txtEmailAddress.Text = Session["Client"].ToString();
                }
                if (Session["Date"] != null)
                {
                    lblDate.Text = Session["Date"].ToString();
                }
                if (Session["Time"] != null)
                {
                    lblTime.Text = Session["Time"].ToString();
                }
            }
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(txtBankName.Text) || string.IsNullOrEmpty(txtAccountHolder.Text) || string.IsNullOrEmpty(txtCardNumber.Text) || string.IsNullOrEmpty(txtcvv.Text))
            {
                // Display an alert if any of the payment fields are empty
                Response.Write("<script>alert('Please ensure all payment fields are filled out.');</script>");
                return;
            }

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["TotalTranformationConnectionString"].ConnectionString;

            string BankName = txtBankName.Text;
            string Accountholder = txtAccountHolder.Text;
            string CardNumber = txtCardNumber.Text;
            string cvv = txtcvv.Text;


            using (SqlConnection connect = new SqlConnection(connectionString))
            {
                string q = "INSERT INTO Payment ([BankName], [AccountHolder], [CardNumber], [cvv]) VALUES (@bankName, @accountHolder, @cardNumber, @cvv)";
                SqlCommand comm = new SqlCommand(q, connect);
                comm.Parameters.AddWithValue("@bankName", BankName);
                comm.Parameters.AddWithValue("@accountHolder", Accountholder);
                comm.Parameters.AddWithValue("@cardNumber", CardNumber);
                comm.Parameters.AddWithValue("@cvv", cvv);

                connect.Open();
                comm.ExecuteNonQuery();
                connect.Close();
            }

            // Redirect to ClientDashboard with booking information
            Response.Redirect("SuccessfulBooking.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Bookings.aspx");
        }

        protected void btnBack_Click1(object sender, EventArgs e)
        {

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientDashboard.aspx");
        }
    }
}