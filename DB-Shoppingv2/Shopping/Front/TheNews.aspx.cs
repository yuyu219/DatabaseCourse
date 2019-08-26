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
    public partial class TheNews : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataAdapter orderAdapter = new SqlDataAdapter("select * from Orders", Conn);
            DataSet orderData = new DataSet();
            orderAdapter.Fill(orderData, "Order");

            SqlDataAdapter cusAdapter = new SqlDataAdapter("select * from Customers", Conn);
            DataSet customerData = new DataSet();
            cusAdapter.Fill(customerData, "Customer");

            SqlDataAdapter proAdapter = new SqlDataAdapter("select * from Products", Conn);
            DataSet productData = new DataSet();
            proAdapter.Fill(productData, "Product");
            //all
            string showTableHTML = "";
            //string id;
            int number = 0;
            foreach (DataRow oRow in orderData.Tables["Order"].Rows)
            {
                int k = 0;
                if (number == 20)
                    break;
                id = Convert.ToString(oRow["OrderID"]);
                string td = "            <tr>\r\n" +
                            "                <td>" + id[0] + id[1] + id[2] + "年" + id[3] + id[4] + "月" + id[5] + id[6] + "日" + "</td>\r\n";
                foreach (DataRow cRow in customerData.Tables["Customer"].Rows)
                {
                    if (Convert.ToString(oRow["CustomerID"]) == Convert.ToString(cRow["CustomerID"]))
                    {
                        string name = Convert.ToString(cRow["Name"]);
                        td += "                <td>&nbsp;" + name[0] + "XX&nbsp;</td>\r\n";
                    }
                }
                foreach (DataRow pRow in productData.Tables["Product"].Rows)
                {
                    if (Convert.ToString(oRow["ProductID"]) == Convert.ToString(pRow["ProductID"]))
                    {
                        k++;
                        string ss = Convert.ToString(pRow["Name"]);
                        td += "                <td>&nbsp;" + ss + "&nbsp;</td>\r\n";
                    }
                }
                if(k==0)
                {
                    td += "                <td>&nbsp;此商品已下架&nbsp;</td>\r\n";
                }
                td += "                <td>&nbsp;" + Convert.ToString(oRow["Number"]) + "&nbsp;</td>\r\n" +
                      "            </tr>\r\n";
                showTableHTML += td;
                number++;
            }
             news.Text = showTableHTML;
        }
    }
}