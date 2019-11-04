using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace Shopping.Backend
{
    /// <summary>
    /// DeleteProduct 的摘要描述
    /// </summary>
    public class DeleteProduct : IHttpHandler 
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = Convert.ToString(context.Request.QueryString["id"]);
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                string sql = "delete from Products where ProductID=@id";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.Add("@id", SqlDbType.NVarChar, 50).Value = id;
                conn.Open();
                cmd.ExecuteNonQuery();
                cmd.Dispose();

                /*sql = "TRUNCATE TABLE Customers";
                cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                sql = "TRUNCATE TABLE Orders";
                cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();*/
            }
            /*
            HttpRequest Request = context.Request;
            HttpResponse Response = context.Response;
            string redirurl = "Products.aspx";
            context.RewritePath(redirurl);
            Response.Redirect(redirurl);*/
            string str = "<script>alert('您已刪除" + id + "成功'); location.href='Products.aspx'; </script>";
            context.Response.Write(str);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}