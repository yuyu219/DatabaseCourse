using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shopping.Backend
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string user = UserNameTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            if (user.Length == 0 || password.Length == 0)
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('您未填帳號或密碼')</script>"));
            }
            else if (user != "admin" || password != "amanda")
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('帳號密碼有誤')</script>"));
                PasswordTextBox.Text = "";
            }
            else
            {
                Session["userName"] = "yes";
                Session["password"] = "yes";
                string s_url;
                s_url = "Products.aspx";
                Response.Redirect(s_url);
            }
        }
    }
}