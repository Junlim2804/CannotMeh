using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CannotMeh
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                if (GridView1.Rows.Count != 0)
                {
                    {
                        decimal total = 0;
                        foreach (GridViewRow row in GridView1.Rows)
                        {
                            String cellText = row.Cells[4].Text;
                            total += Convert.ToDecimal(cellText);
                        }
                        GridView1.FooterRow.Cells[3].Text = "Total";
                        GridView1.FooterRow.Cells[3].HorizontalAlign = HorizontalAlign.Right;
                        GridView1.FooterRow.Cells[4].Text = total.ToString("N2");
                    }
                }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            GridView1.DataSourceID = "SqlDataSource2";
            GridView1.DataBind();
           
        }

        public override void
   VerifyRenderingInServerForm(Control control)
        {
            return;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Clear();

            Response.Buffer = true;

            Response.AddHeader("content-disposition",

             "attachment;filename=DataTable.xls");

            Response.Charset = "";

            Response.ContentType = "application/vnd.ms-excel";

            StringWriter sw = new StringWriter();

            HtmlTextWriter hw = new HtmlTextWriter(sw);



            for (int i = 0; i < GridView1.Rows.Count; i++)

            {

                //Apply text style to each Row

                GridView1.Rows[i].Attributes.Add("class", "textmode");

            }

            GridView1.RenderControl(hw);



            //style to format numbers to string

            string style = @"<style> .textmode { mso-number-format:\@; } </style>";

            Response.Write(style);

            Response.Output.Write(sw.ToString());

            Response.Flush();

            Response.End();
        }
    }
}