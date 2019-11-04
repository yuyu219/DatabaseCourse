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

namespace Shopping.shopping_process
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Convert.ToString(Request.QueryString["id"]);
           // Response.Write("<hr />" + id + "<hr />");
            SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataAdapter Adapter = new SqlDataAdapter("select Name from Products where ProductID = @id", Conn);
            Adapter.SelectCommand.Parameters.Add("@id", SqlDbType.NVarChar, 50);
            Adapter.SelectCommand.Parameters["@id"].Value = id;
            DataSet Data = new DataSet();
            try
            {
                Adapter.Fill(Data, "product");
                foreach (DataRow pRow in Data.Tables["product"].Rows)
                {
                    ProIDLabe.Text = id;
                    ProNameLabel.Text = Convert.ToString(pRow["Name"]);
                }
            }
            catch (Exception ex)
            {
                //Response.Write("<hr />" + ex.ToString() + "<hr />");
            }
        }

        protected void CheckButton_Click(object sender, EventArgs e)
        {
            System.DateTime currentTime=new System.DateTime(); 
            currentTime = System.DateTime.Now;
            String ProNumber = ProNumTextBox.Text.Trim();
            int pronum = Convert.ToInt32(ProNumber);
            String trans = "";
            if (RadioButtonList1.SelectedIndex == 0)
            {
                trans = "7-11";
            }
            else if (RadioButtonList1.SelectedIndex == 1)
            {
                trans = "全家";
            }
            else if (RadioButtonList1.SelectedIndex == 2)
            {
                trans = "宅配";
            }
            String name = CusNameTextBox.Text.Trim();
            String phone = CusPhoneTextBox.Text;
            String address = AddressTextBox.Text;
            String email = EmailTextBox.Text;
            String CustoID = Convert.ToString(currentTime.Year-1911) + currentTime.ToString("MM") + currentTime.ToString("dd") + currentTime.ToString("HH") + currentTime.ToString("mm") + currentTime.ToString("ss");
            //String CustoID = Convert.ToString(currentTime.Year - 1911) + Convert.ToString(currentTime.Month) + Convert.ToString(currentTime.Day) + Convert.ToString(currentTime.Hour) + Convert.ToString(currentTime.Minute) + Convert.ToString(currentTime.Second);
            String OrderID = CustoID;
            string DateTime = currentTime.ToString("F");
            //Response.Write("<hr />" + CustoID + "&nbsp; " + DateTime +"<hr />");
            bool allow = true;
            if (ProNumber.Length == 0)
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('未填寫購買數量')</script>"));
                allow = false;
            }
            else if (name.Length == 0)
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('未填寫姓名')</script>"));
                allow = false;
            }
            else if (phone.Length == 0)
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('未填寫手機號碼')</script>"));
                allow = false;
            }
            else if (phone.Length != 10)
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('手機號碼字數不符')</script>"));
                allow = false;
            }
            else if (address.Length == 0)
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('未填寫地址')</script>"));
                allow = false;
            }
            else if (email.Length == 0)
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('未填寫Email')</script>"));
                allow = false;
            }
            else if (trans == "")
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('未選擇運送方式')</script>"));
                allow = false;
            }

            if (allow)
            {
                try
                {
                        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                        SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                        string Ordersql = "insert into Orders (OrderID, ProductID, CustomerID, Number, Transport, DateTime) values(@orderID,@proID,@cusID,@num,@trans,@dateTime)";
                        string Custosql = "insert into Customers (CustomerID, Name, CellPhone, Address, Email) values(@cusID,@name,@cell,@address,@email)";
                        SqlCommand Ordercmd = new SqlCommand(Ordersql, conn1);
                        SqlCommand Custocmd = new SqlCommand(Custosql, conn2);
                        Ordercmd.Parameters.Add("@orderID", SqlDbType.NVarChar, 50).Value = OrderID;
                        Ordercmd.Parameters.Add("@proID", SqlDbType.NVarChar, 50).Value = ProIDLabe.Text.Trim();
                        Ordercmd.Parameters.Add("@cusID", SqlDbType.NVarChar, 50).Value = CustoID;
                        Ordercmd.Parameters.Add("@num", SqlDbType.Int).Value = pronum;
                        Ordercmd.Parameters.Add("@trans", SqlDbType.NVarChar).Value = trans;
                        Ordercmd.Parameters.Add("@dateTime", SqlDbType.DateTime).Value = DateTime;
                        Custocmd.Parameters.Add("@cusID", SqlDbType.NVarChar, 50).Value = CustoID;
                        Custocmd.Parameters.Add("@name", SqlDbType.NChar, 50).Value = name;
                        Custocmd.Parameters.Add("@cell", SqlDbType.NVarChar, 10).Value = phone;
                        Custocmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = address;
                        Custocmd.Parameters.Add("@email", SqlDbType.NVarChar, 50).Value = email;
                        conn1.Open();
                        Ordercmd.ExecuteNonQuery();
                        conn2.Open();
                        Custocmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Response.Write("<hr />" + ex + "<hr />");
                }
                Response.Redirect("SucessBuy.aspx");
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("1");
        }
    }
}