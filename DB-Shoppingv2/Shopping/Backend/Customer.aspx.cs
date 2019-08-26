using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

//----自己寫的----
using System.Web.Configuration;
using System.Data.SqlClient;
//----自己寫的----

namespace Shopping.Backend
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null && Session["password"] == null)
            {
                string s_url;
                s_url = "NoLogin.aspx";
                Response.Redirect(s_url);
            }
            else
            {
                SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlDataAdapter custAdapter = new SqlDataAdapter("select * from Customers", Conn);
                DataSet customerData = new DataSet();
                custAdapter.Fill(customerData, "Customers");

                string showTableHTML = "";
                foreach (DataRow pRow in customerData.Tables["Customers"].Rows)
                {
                    string td = "<tr>\r\n" +
                        "		            <td align=\"center\"; width=\"100\">" + pRow["CustomerID"] + "</td>\r\n" +
                        "		            <td align=\"center\";  width=\"100\">" + pRow["Name"] + "</td>\r\n" +
                        "		            <td align=\"center\"; width=\"80\">" + pRow["CellPhone"] + "</td>\r\n" +
                        "		            <td align=\"center\"; width=\"300\">" + pRow["Address"] + "</td>\r\n" +
                        "		            <td align=\"center\"; width=\"150\">" + pRow["Email"] + "</td>\r\n" +
                        "	              </tr>\r\n";
                    showTableHTML += td;
                }
                li_showData.Text = showTableHTML;
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session["userName"] = null;
            Session["password"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}