using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CannotMeh
{
    public partial class Beautician : System.Web.UI.Page
    {


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
    }
}