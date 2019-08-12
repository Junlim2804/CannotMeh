using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CannotMeh
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Login_OnClick(object sender, EventArgs args)
        {
            if (FormsAuthentication.Authenticate(UsernameTextbox.Text, PasswordTextbox.Text))
                FormsAuthentication.RedirectFromLoginPage(UsernameTextbox.Text,false);
            else
                Msg.Text = "Login failed. Please check your user name and password and try again.";
        }



    }
}