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
    public partial class WalkIn : System.Web.UI.Page

    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            lblappdate.Text= DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCustID.Text = ddlcustomer.SelectedValue;
            ddlcustomer.Visible = false;
            btnChange.Visible = true;


        }

        protected void btnChange_Click(object sender, EventArgs e)
        {
            ddlcustomer.Visible = true;
            lblCustID.Text = "";
            btnChange.Visible = false;
        }

        protected void DdlBeautician_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblBeatID.Text = ddlBeautician.SelectedValue;
            ddlBeautician.Visible = false;
            btnChange1.Visible = true;


        }

        protected void btnChange1_Click(object sender, EventArgs e)
        {
            ddlBeautician.Visible = true;
            lblBeatID.Text = "";
            btnChange1.Visible = false;
        }


       

        protected void ddlService_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCode.Text = ddlService.SelectedValue;
            String sql = "Select price from services where code='" + ddlService.SelectedValue + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            txtTotalPayment.Text = cmd.ExecuteScalar().ToString();
            conn.Close();
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            String custid=lblCustID.Text;
            String beatid=lblBeatID.Text;
            String codeid = ddlService.SelectedValue;
            String totalPay = txtTotalPayment.Text;
            Response.Redirect("ConfirmPayment.aspx?custid=" + custid + "&beatid=" + beatid+"&code="+codeid+"&price="+totalPay);

        }
    }
}