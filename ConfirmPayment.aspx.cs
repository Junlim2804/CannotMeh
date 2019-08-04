using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CannotMeh
{
    public partial class popup : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPay_Click(object sender, EventArgs e)
        {

            Label amount = FormView1.FindControl("PaymentLabel") as Label;
            HiddenField code = FormView1.FindControl("HFcode") as HiddenField;
            Label todaydate = FormView1.FindControl("Current_TimeLabel") as Label;
            String custid = Request.QueryString["custid"];
            Label appdate = FormView1.FindControl("Appointment_TimeLabel") as Label;

            String beatid = Request.QueryString["beatid"];
            conn.Open();
            SqlCommand cmd = new SqlCommand("prc_confirmPayment", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@custid", custid));
            cmd.Parameters.Add(new SqlParameter("@amount", amount.Text));
            cmd.Parameters.Add(new SqlParameter("@code", code.Value));
            cmd.Parameters.Add(new SqlParameter("@paydate", todaydate.Text));
            cmd.Parameters.Add(new SqlParameter("@beatid", beatid));
            cmd.ExecuteNonQuery();
            String sql = "set dateformat dmy update appointment set complete=1 where appdate='" + appdate.Text + "' and custid='" + custid + "' and beatid='" + beatid + "'";
            cmd = new SqlCommand(sql, conn);

            cmd.ExecuteNonQuery();
            Response.Redirect("Payment.aspx");


        }


    }
}