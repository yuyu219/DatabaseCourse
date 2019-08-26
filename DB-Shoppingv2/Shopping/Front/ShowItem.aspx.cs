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

namespace Shopping.Front
{
    public partial class ShowItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //網頁讀取時自動載入
            string itemid = Request.QueryString["id"];

            SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataAdapter proAdapter = new SqlDataAdapter("select * from Products", Conn);
            DataSet productData = new DataSet();
            proAdapter.Fill(productData, "Product");
            //detail
            string showTableHTML = "";
            foreach (DataRow pRow in productData.Tables["Product"].Rows)
            {
                if (itemid==Convert.ToString(pRow["ProductID"]))
                {
                    string td = "";

                    if (Convert.ToString(pRow["Picture"]).Length != 0)
                    {
                        td += "<p class=\"ex1\">\r\n"+
                              "            <img src=\"/Backend/ImageShow.ashx?id=" + itemid + "\"; style =\"width:500px; height:400px\";  class=\"img-responsive\" align=\"left\"/>\r\n" +
                              "                <font size=\"6\"; font-family='Microsoft JhengHei'><br>\r\n";
                    }
                    else
                    {
                        td += "<p class=\"ex1\">\r\n"+
                              "            <img src=\"/Backend/image/no-photo-grey_1x.png\"; style =\"width:500px; height:400px\";  class=\"img-responsive\"/ align=\"left\" >\r\n" +
                              "            <font size=\"6\"; font-family='Microsoft JhengHei'><br>\r\n";
                    }
                    if (Convert.ToString(pRow["Description"]).Length != 0)
                    {
                        td += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品名稱: " + pRow["Name"] + "<br><br>" +
                              "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品描述: <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + pRow["Description"] +
                              "<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;價錢: $" + pRow["Price"] +
                              "            </font>\r\n        </p>\r\n"+
                              "<p class=\"ex1\"><img src=\"/image/goshopping.png\"; style =\"width:150px; height:50px\";  class=\"img-responsive\"/ onclick=\"location.href='Buy.aspx?id="+ itemid +"'\" align=\"right\"></p>";
                    }
                    else
                    {
                        td += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品名稱: " + pRow["Name"] + "<br><br>" +
                              "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;商品描述: <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;無" +
                              "<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;價錢: $" + pRow["Price"] +
                              "            </font>\r\n            </p>\r\n" +
                              "<p class=\"ex1\"><img src=\"/image/goshopping.png\"; style =\"width:150px; height:50px\";  class=\"img-responsive\"/ onclick=\"location.href='Buy.aspx?id="+ itemid +"'\" align=\"right\"></p>";
                    }
                    //下訂單
                    td += "";
                    showTableHTML += td;
                }
            }
            itemdetail.Text = showTableHTML;
            //this.itemname.Text = "<h1>" + Request.QueryString["id"] + "</h1>\r\n";
        }
    }
}