using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Shopping.Backend
{
    /// <summary>
    /// EditHandler 的摘要描述
    /// </summary>
    public class EditHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = Convert.ToString(context.Request.QueryString["id"]);
            HttpRequest Request = context.Request;
            HttpResponse Response = context.Response;
            string s_url;
            s_url = "ProductEdit.aspx?id=" + id;
            context.RewritePath(s_url);
            Response.Redirect(s_url);
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