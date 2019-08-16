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
    public partial class Service : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected String generate_code()

        {
            conn.Open();
            //insert into Appointment values('1906002','B001','02/07/2019 12:00','F001','80')

            String code = "";
            String sql = "SELECT TOP 1 code FROM Services ORDER BY code DESC ; ";

            SqlCommand cmd = new SqlCommand(sql, conn);
            code=(String)cmd.ExecuteScalar();
            code = code.Substring(0, 1) + (Convert.ToInt32(code.Substring(1, code.Length - 1)) + 1);
            conn.Close();
            return code;
        }

        protected void Item_Command(Object sender, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                DataList1.SelectedIndex = e.Item.ItemIndex;
                FormView1.Visible = true;
                FormView1.ChangeMode(FormViewMode.ReadOnly);

                FormView1.DataBind();
                DataList1.Visible = false;
            }
            else if (e.CommandName == "Edit")
            {
                FormView1.Visible = true;
                FormView1.ChangeMode(FormViewMode.Edit);
                DataList1.Visible = false;
                FormView1.DataBind();

            }
            else if (e.CommandName == "Cancel")
                DataList1.SelectedIndex = -1;
       
                // Rebind the data source to the DataList to refresh the control.
                DataList1.DataBind();

        }

        protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            
        }

        protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            DataList1.DataBind();
        }

        protected void FormView1_ModeChanged(object sender, FormViewModeEventArgs e)
        {
            if(e.NewMode== FormViewMode.Insert)
            {
            TextBox tbcode = FormView1.FindControl("codeTextBox") as TextBox;
            tbcode.Text = generate_code();
            tbcode.Enabled = true;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            FormView1.ChangeMode(FormViewMode.Insert);
            FormView1.DataBind();
            TextBox tbcode = FormView1.FindControl("codeTextBox") as TextBox;
            tbcode.Text = generate_code();
            tbcode.Enabled = true;
            FormView1.Visible = true;
         
        }

        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
            {
                FormView1.Visible = false;
                FormView1.ChangeMode(FormViewMode.ReadOnly);
                FormView1.DataBind();
                DataList1.SelectedIndex = -1;
                DataList1.DataBind();
                DataList1.Visible = true;
            }
        }

        protected void typeTextBox_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            DataList1.DataBind();
        }

        protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            DataList1.DataBind();
            FormView1.ChangeMode(FormViewMode.ReadOnly);
            FormView1.Visible = false;
        }
    }
}