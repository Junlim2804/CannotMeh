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
    public partial class Customer : System.Web.UI.Page
    {
        
        static String ref_hpno = null;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

        protected void delete_click(object sender, EventArgs e)
        {
            FormView1.DeleteItem();
        }

        protected void refresh_databind(object sender, SqlDataSourceStatusEventArgs e)
        {
            GridView1.DataBind();

        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            FormView1.ChangeMode(FormViewMode.Edit);
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            FormView1.ChangeMode(FormViewMode.Insert);
        }

        protected void cancel_select_click(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = -1;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox cb_ref = FormView1.FindControl("cb_ref") as CheckBox;

            TextBox tbhpno = FormView1.FindControl("tbhpno") as TextBox;
            Label lbcustname = FormView1.FindControl("lbcustname") as Label;
            Label lbrefhp = FormView1.FindControl("lbrefhpno") as Label;
           
            Button btnsearch = FormView1.FindControl("btnsearch") as Button;
            if (cb_ref.Checked == true)
            {
                tbhpno.Visible = true;

                lbrefhp.Visible = true;
                btnsearch.Visible = true;
                lbcustname.Visible = true;

            }
            else
            {
                tbhpno.Visible = false;
                ref_hpno = null;
                lbrefhp.Visible = false;
                btnsearch.Visible = false;
                lbcustname.Visible = false;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox tbhpno = FormView1.FindControl("tbhpno") as TextBox;
            Label lbcustname = FormView1.FindControl("lbcustname") as Label;
            
            conn.Open();
            //insert into Appointment values('1906002','B001','02/07/2019 12:00','F001','80')


            String sql = "Select Concat(fname,lname) from customer where custID='"+tbhpno.Text+"'";

            SqlCommand cmd = new SqlCommand(sql, conn);
            var result = cmd.ExecuteScalar();
            if (result != null)
            {
                String custname = result.ToString();
                lbcustname.Text = custname;
                ref_hpno = tbhpno.Text;
            }
            else
                lbcustname.Text = "Not Found";
            conn.Close();
           

        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            if (ref_hpno == null)
                return;
            conn.Open();
            //insert into Appointment values('1906002','B001','02/07/2019 12:00','F001','80')


            String sql = "Update customer set memberbring=memberbring+1 where custid='"+ref_hpno+"'";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            GridView1.DataBind();
        }

        protected void isMemberCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox cb_ref = FormView1.FindControl("cb_ref") as CheckBox;
            CheckBox is_member = FormView1.FindControl("isMemberCheckBox") as CheckBox;
            Label lbref = FormView1.FindControl("lbref") as Label;
            if (is_member.Checked)
            { 
            
            cb_ref.Visible = true;
                lbref.Visible = true;
                cb_ref.Focus();

            }
            else
            {
                ref_hpno = null;
                cb_ref.Visible = false;
                lbref.Visible = false;
            }

        }
    }
}