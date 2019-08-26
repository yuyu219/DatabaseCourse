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
    /// ImageShow 的摘要描述
    /// </summary>
    public class ImageShow : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = Convert.ToString(context.Request.QueryString["id"]);
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
              {
                  string sql = "select Picture from Products where ProductID=@id";
                  SqlCommand cmd = new SqlCommand(sql, conn);
                  cmd.Parameters.Add("@id", SqlDbType.NVarChar, 50).Value = id;
                  conn.Open();
                  SqlDataReader dr = cmd.ExecuteReader();
                  if (dr.Read())
                  {
                      context.Response.ContentType = "image/jpeg";
                      context.Response.BinaryWrite((byte[])dr["Picture"]);
                  }
                  dr.Close();
              }
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