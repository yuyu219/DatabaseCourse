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
    public partial class InputProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] == null && Session["password"] == null)
            {
                string s_url;
                s_url = "NoLogin.aspx";
                Response.Redirect(s_url);
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {   
            String ProID = ProIDTextBox.Text.Trim();
            String ProName = ProNameTextBox.Text.Trim();
            String ProPrice = ProPriceTextBox.Text.Trim();
            String ProDes = ProDesTextBox.Text;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            bool allow = true;
            if (ProID.Length == 0)
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('未填寫商品編號')</script>"));
                allow = false;
            }
            else if (ProID.Length != 0) //是否此商品編號以存在
            {
                SqlDataAdapter Adapter = new SqlDataAdapter("select ProductID from Products where ProductID = @id", conn);
                Adapter.SelectCommand.Parameters.Add("@id",SqlDbType.NVarChar, 50);
                Adapter.SelectCommand.Parameters["@id"].Value = ProID;
                DataSet Data = new DataSet();
                Adapter.Fill(Data, "SamePro");
                if (Data.Tables["SamePro"].Rows.Count != 0)
                {
                    this.Page.Form.Controls.Add(new LiteralControl("<script>alert('此商品編號已存在')</script>"));
                    allow = false;
                }
            }
            else if (ProName.Length == 0)
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('未填寫商品名稱')</script>"));
                allow = false;
            }
            else if (ProPrice.Length == 0)
            {
                this.Page.Form.Controls.Add(new LiteralControl("<script>alert('未填寫商品價格')</script>"));
                allow = false;
            }

            if (allow)
            {
                //判斷檔案是否存在
                if (this.uploadFile.HasFile)
                {
                    //取得副檔名
                    string ExtName = System.IO.Path.GetExtension(this.uploadFile.PostedFile.FileName).ToLower();
                    string MIME = "";

                    switch (ExtName)
                    {
                        case ".gif":
                            MIME = "image/gif";
                            break;
                        case ".jpg":
                            MIME = "image/jpg";
                            break;
                        case ".png":
                            MIME = "image/png";
                            break;
                        default:
                            this.Page.Form.Controls.Add(new LiteralControl("<script>alert('上傳檔案不為支援的圖片檔')</script>"));
                            break;
                    }

                    if (MIME != "")
                    {
                        //String appPath  = Request.PhysicalApplicationPath;
                        //寫入資料庫
                        //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                        //{
                            string sql = "insert into Products (ProductID,Name,Picture,Price,Description) values(@ProID,@ProName,@ProPicture,@ProPrice,@ProDes)";
                            SqlCommand cmd = new SqlCommand(sql, conn);
                            cmd.Parameters.Add("@ProID", SqlDbType.NVarChar, 50).Value = ProID;
                            cmd.Parameters.Add("@ProName", SqlDbType.NVarChar).Value = ProName;
                            cmd.Parameters.Add("@ProPrice", SqlDbType.Int).Value = Convert.ToInt32(ProPrice);
                            cmd.Parameters.Add("@ProDes", SqlDbType.NVarChar).Value = ProDes;
                            byte[] imagebyte = new byte[this.uploadFile.PostedFile.InputStream.Length];
                            this.uploadFile.PostedFile.InputStream.Read(imagebyte, 0, imagebyte.Length);
                            cmd.Parameters.Add("@ProPicture", SqlDbType.Image).Value = imagebyte;
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            cmd.Dispose();
                        //}
                        this.Page.Form.Controls.Add(new LiteralControl("<script>alert('新增成功，可至商品資料確認')</script>"));
                        ProIDTextBox.Text = "";
                        ProNameTextBox.Text = "";
                        ProPriceTextBox.Text = "";
                        ProDesTextBox.Text = "";
                    }
                }
                else
                {
                    try
                    {
                        //寫入資料庫
                        //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                       // {
                            string sql = "insert into Products (ProductID,Name,Price,Description) values(@ProID,@ProName,@ProPrice,@ProDes)";
                            SqlCommand cmd = new SqlCommand(sql, conn);
                            cmd.Parameters.Add("@ProID", SqlDbType.NVarChar, 50).Value = ProID;
                            cmd.Parameters.Add("@ProName", SqlDbType.NVarChar).Value = ProName;
                            cmd.Parameters.Add("@ProPrice", SqlDbType.Int).Value = Convert.ToInt32(ProPrice);
                            cmd.Parameters.Add("@ProDes", SqlDbType.NVarChar).Value = ProDes;
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            cmd.Dispose();
                        //}
                        this.Page.Form.Controls.Add(new LiteralControl("<script>alert('新增成功，可至商品資料確認')</script>"));
                        ProIDTextBox.Text = "";
                        ProNameTextBox.Text = "";
                        ProPriceTextBox.Text = "";
                        ProDesTextBox.Text = "";
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<hr />" + ex.ToString() + "<hr />");
                    }
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