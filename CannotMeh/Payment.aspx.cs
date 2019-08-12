using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CannotMeh
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOpenPopupWindow_Click(object sender, EventArgs e)
        {
            String custid=GridView1.SelectedRow.Cells[1].Text;
            String beatid = GridView1.SelectedRow.Cells[3].Text;
            String appdate = GridView1.SelectedRow.Cells[5].Text;
            Response.Redirect("ConfirmPayment.aspx?custid="+custid+"&beatid="+beatid+"&appdate="+appdate);

        }

    }
}