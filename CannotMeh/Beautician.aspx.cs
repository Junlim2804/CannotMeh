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
    public partial class Beautician : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());

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
            FormView1.DataBind();
            TextBox tbcode = FormView1.FindControl("beatIDTextBox") as TextBox;
            tbcode.Text = generate_code();
        }

        protected void delete_click(object sender, EventArgs e)
        {
            try
            {
                FormView1.DeleteItem();
            }catch(SqlException ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Error Delete, Please contact System Administrator');", true);
            }
        }

        protected void cancel_select_click(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = -1;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void tbsearch_TextChanged(object sender, EventArgs e)
        {

        }

        protected String generate_code()

        {
            conn.Open();
            //insert into Appointment values('1906002','B001','02/07/2019 12:00','F001','80')

            String code = "";
            String sql = "SELECT TOP 1 beatid FROM beautician ORDER BY beatid DESC ; ";

            SqlCommand cmd = new SqlCommand(sql, conn);
            code = (String)cmd.ExecuteScalar();
            code = code.Substring(0, 1) + (Convert.ToInt32(code.Substring(1, code.Length - 1)) + 1);
            conn.Close();
            return code;
        }

    }
}