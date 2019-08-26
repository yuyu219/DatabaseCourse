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
    public partial class ShowProduct : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataAdapter proAdapter = new SqlDataAdapter("select * from Products", Conn);
            DataSet productData = new DataSet();
            proAdapter.Fill(productData, "Product");
            //all
            string showTableHTML = "";
            //string id;
            int number = 0;
            foreach (DataRow pRow in productData.Tables["Product"].Rows)
            {
                if (number == 16)
                    break;
                id = Convert.ToString(pRow["ProductID"]);
                string td = "            <div class=\"col-lg-3 col-md-4 col-sm-6 ex1\"; style=\"border-style:solid; border-color:lightgray; border-width:1px;\"; onclick=\"location.href = '/Front/ShowItem.aspx?id=" + id + "'\" class=\"btn_marginless\">\r\n" +
                            "                <a>\r\n";

                if (Convert.ToString(pRow["Picture"]).Length != 0)
                {
                    td += "                    <p><img src=\"/Backend/ImageShow.ashx?id=" + id + "\"; style =\"width:280x; height:220px\";  class=\"img-responsive\"/>" + "</p>\r\n";
                }
                else
                {
                    td += "                    <p><img src=\"/Backend/image/no-photo-grey_1x.png\"; style =\"width:280px; height:220px\";  class=\"img-responsive\"/>" + "</p>\r\n";
                }

                td += "                    <p align=\"center\"><font size=\"5\"; font-family='Microsoft JhengHei'>" + pRow["Name"] + "&nbsp;&nbsp;&nbsp;&nbsp;$" + pRow["Price"] + "</font></p>\r\n" +
                      "                </a>\r\n        </div>\r\n";
                showTableHTML += td;
                number++;
            }
            indexitem.Text = showTableHTML;
           /* if(RouteData.Values["Parameter"] != null)
            {
                string str = RouteData.Values["Parameter"] as string;
                Response.Write(str);
                Response.End();
            }*/
        }
    }
}