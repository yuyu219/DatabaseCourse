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
    public partial class Record : System.Web.UI.Page
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
                SqlDataAdapter orderAdapter = new SqlDataAdapter("select * from Orders", Conn);
                DataSet orderData = new DataSet();
                try
                {
                    orderAdapter.Fill(orderData, "order");
                    string showTableHTML = "";
                    foreach (DataRow pRow in orderData.Tables["order"].Rows)
                    {
                        string td = "<tr>\r\n" +
                            "		            <td align=\"center\"; width=\"100\">" + pRow["OrderID"] + "</td>\r\n" +
                            "		            <td align=\"center\";  width=\"100\">" + pRow["ProductID"] + "</td>\r\n" +
                            "		            <td align=\"center\"; width=\"80\">" + pRow["CustomerID"] + "</td>\r\n" +
                            "		            <td align=\"center\"; width=\"80\">" + pRow["Number"] + "</td>\r\n" +
                            "		            <td align=\"center\"; width=\"100\">" + pRow["Transport"] + "</td>\r\n" +
                            "		            <td align=\"center\"; width=\"200\">" + pRow["DateTime"] + "</td>\r\n" +
                            "	              </tr>\r\n";
                        showTableHTML += td;
                    }
                    li_showData.Text = showTableHTML;
                }
                catch (Exception ex)
                {
                    Response.Write("<hr />" + ex.ToString() + "<hr />");
                }
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