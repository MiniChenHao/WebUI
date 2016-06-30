using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Common.NetBean
{
    public class CookieHelper
    {
        /// <summary>
        /// Cookie写入操作
        /// </summary>
        /// <param name="Name">Cookie名称</param>
        /// <param name="Value">Cookie值</param>
        public static void WriteCookie(string Name, string Value)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[Name];
            if (cookie == null)
            {
                cookie = new HttpCookie(Name);
            }
            cookie.Value = Value;
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        /// <summary>
        /// Cookie写入操作
        /// </summary>
        /// <param name="Name">Cookie名称</param>
        /// <param name="Value">Cookie值</param>
        /// <param name="Expires">Cookie有效时间(以分钟计算)</param>
        public static void WriteCookie(string Name, string Value, int Expires)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[Name];
            if (cookie == null)
            {
                cookie = new HttpCookie(Name);
            }
            cookie.Value = Value;
            cookie.Expires = DateTime.Now.AddMinutes((double)Expires);
            HttpContext.Current.Response.AppendCookie(cookie);
        }

        /// <summary>
        /// 获取Cookie值
        /// </summary>
        /// <param name="Name">Cookie名称</param>
        /// <returns>Cookie值</returns>
        public static string GetCookie(string Name)
        {
            string Result;
            if (HttpContext.Current.Request.Cookies != null && HttpContext.Current.Request.Cookies[Name] != null)
            {
                Result = HttpContext.Current.Request.Cookies[Name].Value.ToString();
            }
            else
            {
                Result = "";
            }
            return Result;
        }

        /// <summary>
        /// 删除Cookie值
        /// </summary>
        /// <param name="Name">Cookie名称</param>
        public static void DeleteCookie(string Name)
        {
            HttpCookie cookie = HttpContext.Current.Request.Cookies[Name];
            if (cookie != null)
            {
                cookie.Expires = DateTime.Now.AddDays(-1);
                HttpContext.Current.Response.AppendCookie(cookie);
            }
        }
    }
}
