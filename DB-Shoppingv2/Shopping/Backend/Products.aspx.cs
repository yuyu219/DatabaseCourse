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
namespace Shopping
{
    public partial class BackProductsInput : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null && Session["password"] == null)
            {
                 string s_url;
                 s_url = "NoLogin.aspx";
                 Response.Redirect(s_url);
                //Response.Write("<script>alert('無權限觀看資料，請先登入'); location.href='Login.aspx'; </script>");
                //this.Page.Form.Controls.Add(new LiteralControl("<script>alert('無權限觀看資料，請先登入')</script>"));
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "warning", "<script>alert('無權限觀看資料');location.href='Login.aspx';</script>");
            }
            else
            {
                SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlDataAdapter proAdapter = new SqlDataAdapter("select * from Products", Conn);
                DataSet productData = new DataSet();
                proAdapter.Fill(productData, "Products");

                string showTableHTML = "";
                string id;
                foreach (DataRow pRow in productData.Tables["Products"].Rows)
                {
                    id = Convert.ToString(pRow["ProductID"]).Trim();
                    string td = "	              <tr>\r\n" +
                        "		            <td align=\"center\"; width=\"80\">" + id + "</td>\r\n" +
                        "		            <td align=\"center\";  width=\"80\">" + pRow["Name"] + "</td>\r\n";

                    if (Convert.ToString(pRow["Picture"]).Length != 0)
                    {
                        td += "		            <td align=\"center\"; width=\"80\"><img src=\"ImageShow.ashx?id=" + id + "\"; style =\"width:100px; height:100px\" />" + "</td>\r\n";
                    }
                    else
                    {
                        td += "		            <td align=\"center\"; width=\"80\"><img src=\"image/noimage.gif\"; style =\"width:100px; height:80px\" />" + "</td>\r\n";
                    }

                    td += "		            <td align=\"center\"; width=\"100\">" + pRow["Price"] + "</td>\r\n" +
                          "		            <td align=\"center\"; width=\"200\">" + pRow["Description"] + "</td>\r\n" +
                          "		            <td align=\"center\"; width=\"80\">\r\n" +
                          "		            &nbsp;<input type=\"button\" value=\"編輯\" name=\"Editbutton\" onclick=\"location.href = 'EditHandler.ashx?id=" + id + "'\" class=\"btn_marginless\" style=\"width:80px; color:Black;\">\r\n" +
                          "		            <br/>\r\n" +
                          "		            <input align=\"center\"; type=\"button\" value=\"刪除\" name=\"Deletebutton\" onclick=\"location.href = 'DeleteProduct.ashx?id=" + id + "'\" class=\"btn_marginless\" style=\"width:80px; color:Black;\">\r\n" +
                          "                 </td>\r\n" +
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