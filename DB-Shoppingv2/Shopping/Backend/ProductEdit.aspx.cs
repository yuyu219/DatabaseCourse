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
using System.Web.Routing;

//----自己寫的----
using System.Web.Configuration;
using System.Data.SqlClient;
//----自己寫的----

namespace Shopping.Backend
{
    public partial class ProductEdit : System.Web.UI.Page
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

        protected void Page_LoadComplete(object sender, System.EventArgs e)
        {
            string id = Convert.ToString(Request.QueryString["id"]);
            //Response.Write("<hr />" + id + "<hr />");
            SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlDataAdapter Adapter = new SqlDataAdapter("select * from Products where ProductID = @id", Conn);
            Adapter.SelectCommand.Parameters.Add("@id", SqlDbType.NVarChar, 50);
            Adapter.SelectCommand.Parameters["@id"].Value = id;
            DataSet Data = new DataSet();
            try
            {
                Adapter.Fill(Data, "product");
                string showPictureHTML = "";
                foreach (DataRow pRow in Data.Tables["product"].Rows)
                {
                    ProIDLabel.Text = Convert.ToString(pRow["ProductID"]);
                    ProNameTextBox.Text = Convert.ToString(pRow["Name"]);
                    ProPriceTextBox.Text = Convert.ToString(pRow["Price"]);
                    ProDesTextBox.Text = Convert.ToString(pRow["Description"]);
                    if (Convert.ToString(pRow["Picture"]).Length != 0)
                    {
                        showPictureHTML = "<img src=\"ImageShow.ashx?id=" + id + "\"; style =\"width:200px; height:200px\" />";
                    }
                    else
                    {
                        showPictureHTML = "<img src=\"image/no-photo-grey_1x.png\"; style =\"width:300px; height:200px\" />";
                    }
                }
                //ProIDLabel.Text = Data.Table[0].Rows[0][0];
                li_showPicture.Text = showPictureHTML;
            }
            catch (Exception ex)
            {
                //Response.Write("<hr />" + ex.ToString() + "<hr />");
            }
        }

        protected void CheckBtn_Click(object sender, EventArgs e)
        {
            String ProID = ProIDLabel.Text.Trim();
            String ProName = ProNameTextBox.Text.Trim();
            String ProPrice = ProPriceTextBox.Text.Trim();
            String ProDes = ProDesTextBox.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            bool allow = true;
            if (ProName.Length == 0)
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
                        try
                        {
                            //String appPath  = Request.PhysicalApplicationPath;
                            //寫入資料庫
                            //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                            //{
                            string sql = "UPDATE Products SET Name = @ProName, Picture = @ProPicture, Price = @ProPrice, Description = @ProDes WHERE ProductID = @ProID";
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
                            this.Page.Form.Controls.Add(new LiteralControl("<script>alert('更新成功，可至商品資料確認')</script>"));
                            // ProNameTextBox.Text = "";
                            //ProPriceTextBox.Text = "";
                            //ProDesTextBox.Text = "";
                        }
                        catch (Exception ex)
                        {
                            Response.Write("<hr />" + ex.ToString() + "<hr />");
                        }
                    }
                }
                else
                {
                    try
                    {

                        //寫入資料庫
                        //using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                        // {
                        string sql = "UPDATE Products SET Name = @ProName, Price = @ProPrice, Description = @ProDes WHERE ProductID = @ProID";
                        SqlCommand cmd = new SqlCommand(sql, conn);
                        cmd.Parameters.Add("@ProID", SqlDbType.NVarChar, 50).Value = ProID;
                        cmd.Parameters.Add("@ProName", SqlDbType.NVarChar).Value = ProName;
                        cmd.Parameters.Add("@ProPrice", SqlDbType.Int).Value = Convert.ToInt32(ProPrice);
                        cmd.Parameters.Add("@ProDes", SqlDbType.NVarChar).Value = ProDes;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        cmd.Dispose();
                        //}
                        this.Page.Form.Controls.Add(new LiteralControl("<script>alert('更新成功，可至商品資料確認')</script>"));
                       // ProNameTextBox.Text = "";
                        //ProPriceTextBox.Text = "";
                        //ProDesTextBox.Text = "";
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<hr />" + ex.ToString() + "<hr />");
                    }
                }
              //  string s_url;
               // s_url = "Products.aspx";
               // Response.Redirect(s_url);
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