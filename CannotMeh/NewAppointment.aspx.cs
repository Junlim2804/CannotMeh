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
    public partial class NewAppointmnet : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calAppDate.SelectedDate = DateTime.Today;
            }
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

  

        protected void ddlTime_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblappdate.Text = calAppDate.SelectedDate.ToString("dd/MM/yyyy")+" "+ddlHour.SelectedValue +":"+ ddlMin.SelectedValue+":00 AM";
            if (Int32.Parse(ddlHour.SelectedValue) > 12)
            {
                int hour = 12;
                hour = Int32.Parse(ddlHour.SelectedValue) - hour;
                lblappdate.Text = calAppDate.SelectedDate.ToString("dd/MM/yyyy") + " " + hour + ":" + ddlMin.SelectedValue + ":00 PM";
                
            }
        }

        protected void ddlService_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblCode.Text = ddlService.SelectedValue;
            String sql="Select price from services where code='"+ddlService.SelectedValue+"'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            txtTotalPayment.Text = cmd.ExecuteScalar().ToString()   ;
            conn.Close();
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            conn.Open();
            //insert into Appointment values('1906002','B001','02/07/2019 12:00','F001','80')
           

            String sql = "Insert into Appointment values(@cid,@bid,@appdate,@code,@price,0)";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add("@cid", SqlDbType.VarChar);
            cmd.Parameters.Add("@bid", SqlDbType.VarChar);
            cmd.Parameters.Add("@appdate", SqlDbType.DateTime);
            cmd.Parameters.Add("@code", SqlDbType.VarChar);
            cmd.Parameters.Add("@price", SqlDbType.Decimal);
            cmd.Parameters["@cid"].Value = lblCustID.Text;
            cmd.Parameters["@bid"].Value = lblBeatID.Text;
       
            cmd.Parameters["@appdate"].Value = lblappdate.Text;
            
            cmd.Parameters["@code"].Value = lblCode.Text;
            cmd.Parameters["@price"].Value = depositTextBox.Text;
            try
            {
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Appointment.aspx");
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Error, Please make sure every value fill in correctly');", true);
            }

        }
    }
}