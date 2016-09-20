using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SysBLL;
using SysModel;

namespace AdminUI.BasePage.SysLog
{
    /// <summary>
    /// GetLogList 的摘要说明
    /// </summary>
    public class GetLogList : IHttpHandler
    {
        SystemErrorLogBLL SELBLL = new SystemErrorLogBLL();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string Type = context.Request["Type"] == null ? "" : context.Request["Type"].ToString();
            string Result = "";
            switch (Type)
            {
                case "SEL":
                    Result = GetSystemErrorLog(context);
                    break;
            }
            context.Response.Write(Result);
        }

        public string GetSystemErrorLog(HttpContext context)
        {
            string PageIndex = context.Request["page"] == null ? "" : context.Request["page"].ToString();
            string PageSize = context.Request["rows"] == null ? "" : context.Request["rows"].ToString();
            string LogJson = "";
            SystemErrorLogModel model = new SystemErrorLogModel();
            model.PageIndex = string.IsNullOrEmpty(PageIndex) ? 1 : Convert.ToInt32(PageIndex);
            model.PageSize = string.IsNullOrEmpty(PageSize) ? 10 : Convert.ToInt32(PageSize);
            List<SystemErrorLogModel> List = SELBLL.GetList(model);
            LogJson = "{\"total\":" + model.OUTTotalCount + ",\"rows\":[";
            foreach (SystemErrorLogModel item in List)
            {
                LogJson += "{\"ID\":\"" + item.ID + "\",\"ErrorType\":\"" + item.ErrorType + "\",\"ErrorMessage\":\"" + item.ErrorMessage + "\",\"PathAndQuery\":\"" + item.PathAndQuery + "\",\"ClientIP\":\"" + item.ClientIP + "\",\"ErrorTime\":\"" + item.ErrorTime + "\",\"StackTrace\":\"" + item.StackTrace + "\"},";
            }
            LogJson = LogJson.TrimEnd(',');
            LogJson += "]}";
            return LogJson;
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