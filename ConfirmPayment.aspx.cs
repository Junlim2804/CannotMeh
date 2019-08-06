using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CannotMeh
{
    public partial class popup : System.Web.UI.Page
    {
        static String code, beatid, custid, amount,datenow;
     
        
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            
            code = "";
            datenow= DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss");
            double price = 0;
            beatid = Request.QueryString["beatid"];
            custid = Request.QueryString["custid"];
            code = Request.QueryString["code"];
            if (Request.QueryString["appdate"] == null)
            {

                Label lbamount = FormView2.FindControl("amountLabel") as Label;
                Label lbcode = FormView2.FindControl("codeLabel") as Label;
                Label todaydate = FormView2.FindControl("payDateLabel") as Label;
                Label lbcustid = FormView2.FindControl("CustIDLabel") as Label;
                Label lbbeatid = FormView2.FindControl("BeatIDLabel") as Label;
                Label lbdiscount = FormView2.FindControl("discountLabel") as Label;
                Label lblori = FormView2.FindControl("oripriceLabel") as Label;
               
                price = Convert.ToDouble(Request.QueryString["price"]);

                lbcode.Text = code;
                todaydate.Text = datenow;
                lbcustid.Text = Request.QueryString["custid"];
                lbbeatid.Text = Request.QueryString["beatid"];
                conn.Open();
                String sql = "select discount from customer where custid =@custid";

                SqlCommand cmd = new SqlCommand(sql, conn);

                cmd.Parameters.Add("@custid", SqlDbType.VarChar);
                cmd.Parameters["@custid"].Value = custid;
                int discount = 0;
                if (cmd.ExecuteScalar() != null)
                {
                    discount = Convert.ToInt32(cmd.ExecuteScalar());
                }
                lblori.Text = price.ToString();
           
                if (discount == 1)
                {
                    lbdiscount.Text = (price * 0.1).ToString();
                    price = price * 0.9;
                }
                lbamount.Text = price.ToString();
                amount = price.ToString();
                conn.Close();

            }
            else
                FormView2.Visible = false;
        }
            
        protected void btnPay_Click(object sender, EventArgs e)
        {
            if (amount == null)
            {
                Label lbamount = FormView1.FindControl("PaymentLabel") as Label;
                amount = lbamount.Text;
            }
            if (code == null)
            {
                HiddenField hfcode = FormView1.FindControl("HFcode") as HiddenField;
                code = hfcode.Value;
            }
           
            //Label todaydate = FormView1.FindControl("Current_TimeLabel") as Label;
            //String custid = Request.QueryString["custid"];
            

            //String beatid = Request.QueryString["beatid"];
            conn.Open();
            SqlCommand cmd = new SqlCommand("prc_confirmPayment", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@custid", custid));
            cmd.Parameters.Add(new SqlParameter("@amount", amount));
            cmd.Parameters.Add(new SqlParameter("@code", code));
            cmd.Parameters.Add(new SqlParameter("@paydate", datenow));
            cmd.Parameters.Add(new SqlParameter("@beatid", beatid));
            cmd.ExecuteNonQuery();
            if (Request.QueryString["appdate"] != null)
            {
                Label appdate = FormView1.FindControl("Appointment_TimeLabel") as Label;
                String sql = "set dateformat dmy update appointment set complete=1 where appdate='" + appdate.Text + "' and custid='" + custid + "' and beatid='" + beatid + "'";
                cmd = new SqlCommand(sql, conn);

                cmd.ExecuteNonQuery();
            }
            conn.Close();
            Response.Redirect("Payment.aspx");  


        }


    }
}