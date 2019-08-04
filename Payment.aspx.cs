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
            String custid=GridView1.SelectedDataKey.Values[0].ToString();
            String beatid = GridView1.SelectedDataKey.Values[1].ToString();
            String appdate = GridView1.SelectedDataKey.Values[2].ToString();
            Response.Redirect("ConfirmPayment.aspx?custid="+custid+"&beatid="+beatid+"&appdate="+appdate);

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = Calendar1.SelectedDate.ToString();
        }
    }
}