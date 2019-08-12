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
    public partial class Appointmnet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            Calendar1.SelectedDate = DateTime.Today;
            GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            FormView1.Visible = true;
            BindFormView();
        }

        private void BindFormView()
        {
            string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select * from appointment where custid=@cid and beatid=@bid and appdate=@appdate", con);
                cmd.Parameters.Add("@cid", SqlDbType.VarChar);
                cmd.Parameters.Add("@bid", SqlDbType.VarChar);
                cmd.Parameters.Add("@appdate", SqlDbType.DateTime);
                cmd.Parameters["@cid"].Value = GridView1.SelectedValue.ToString();
                cmd.Parameters["@bid"].Value = GridView1.SelectedRow.Cells[2].Text;
                cmd.Parameters["@appdate"].Value = GridView1.SelectedRow.Cells[3].Text;
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                con.Open();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                FormView1.DataSource = dt;
                FormView1.DataBind();
            }
        }

        protected void btn_edit_Click(object sender, EventArgs e)
        {
            FormView1.ChangeMode(FormViewMode.Edit);
            BindFormView();
        }
        
        protected void btn_cancel_click(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = -1;
            FormView1.Visible = false;
        }

        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            conn.Open();
            String sql = "Update Appointment set appdate=@appdate where custid=@cid and beatid=@bid and appdate=@oridate";
            Label lblCustID = FormView1.FindControl("CustIDLabel1") as Label;
            Label lblBeatID = FormView1.FindControl("BeatIDLabel1") as Label;
            TextBox tbappdate = FormView1.FindControl("appdateTb1") as TextBox;
            SqlCommand cmd = new SqlCommand(sql, conn);

            cmd.Parameters.Add("@cid", SqlDbType.VarChar);
            cmd.Parameters.Add("@bid", SqlDbType.VarChar);
            cmd.Parameters.Add("@appdate", SqlDbType.DateTime);
            cmd.Parameters.Add("@oridate", SqlDbType.DateTime);
            cmd.Parameters["@cid"].Value = lblCustID.Text;
            cmd.Parameters["@bid"].Value = lblBeatID.Text;

            cmd.Parameters["@appdate"].Value = tbappdate.Text;
            cmd.Parameters["@oridate"].Value = GridView1.SelectedRow.Cells[3].Text;

            int row_no = cmd.ExecuteNonQuery();
            conn.Close();


            FormView1.ChangeMode(FormViewMode.ReadOnly);
            GridView1.SelectedRow.Cells[3].Text = tbappdate.Text;
            BindFormView();
            GridView1.DataBind();
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
            {
                FormView1.ChangeMode(FormViewMode.ReadOnly);
                BindFormView();
            }
        }

        protected void EmployeeFormView_ModeChanging(Object sender, FormViewModeEventArgs e)
        {

            
            switch (e.NewMode)
            {
                case FormViewMode.Edit:
                   
                    FormView1.AllowPaging = false;
                    
                    break;
                case FormViewMode.ReadOnly:
                    // Display the pager row and confirmation message
                    // when transitioning to edit mode.
                    FormView1.AllowPaging = true;
          
                    break;
                case FormViewMode.Insert:
                
                    e.Cancel = true;
                    break;
                default:
                   
                    break;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource2";
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource3";
            GridView1.DataBind();
        }
    }
}