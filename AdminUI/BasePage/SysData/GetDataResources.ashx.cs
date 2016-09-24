using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SysBLL;
using System.Data;

namespace AdminUI.BasePage.SysData
{
    /// <summary>
    /// GetDataResources 的摘要说明
    /// </summary>
    public class GetDataResources : IHttpHandler
    {
        SysDataBLL SDBLL = new SysDataBLL();

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string Type = context.Request["Type"] == null ? "" : context.Request["Type"].ToString();
            string JsonString = "";
            switch (Type)
            {
                case "TableNameList":
                    JsonString = GetTableNameJson();
                    break;
                case "TableColumnList":
                    JsonString = GetTableColumnJson();
                    break;
            }
            context.Response.Write(JsonString);
        }

        public string GetTableNameJson()
        {
            string Result = "[{\"id\":\"-1\",\"text\":\"数据表\",\"children\":[";
            DataSet ds = SDBLL.GetTableNameList();
            DataRowCollection RowList = ds.Tables[0].Rows;
            foreach (DataRow dr in RowList)
            {
                Result += "{\"id\":\"" + dr["RowNo"].ToString() + "\",\"text\":\"" + dr["TABLE_NAME"].ToString() + "\"},";
            }
            Result = Result.TrimEnd(',');
            Result += "]}]";
            return Result;
        }

        public string GetTableColumnJson()
        {
            string Result = "";
            string TableName = "";
            DataSet ds = SDBLL.GetTableColumnList(TableName);
            DataRowCollection RowList = ds.Tables[0].Rows;
            return Result;
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