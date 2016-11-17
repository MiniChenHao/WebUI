using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SysBLL;
using System.Data;
using SysModel;

namespace AdminUI.BasePage.SysData
{
    /// <summary>
    /// GetDataResources 的摘要说明
    /// </summary>
    public class GetDataResources : IHttpHandler
    {
        SysDataBLL SDBLL = new SysDataBLL("ShenWebObject");

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
                    JsonString = GetTableColumnJson(context);
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

        public string GetTableColumnJson(HttpContext context)
        {
            string TableName = context.Request["tableName"] == null ? "" : context.Request["tableName"].ToString();
            string Result = "";
            if (TableName != "")
            {
                List<ColumnModel> list = SDBLL.GetTableColumnList(TableName);
                Result = "{\"total\":" + list.Count + ",\"rows\":[";
                foreach (ColumnModel item in list)
                {
                    Result += "{\"RowNo\":\"" + item.RowNo + "\",\"ColumnName\":\"" + item.ColumnName + "\",\"DataType\":\"" + item.DataType + "\",\"Length\":\"" + item.Length + "\",\"IsNull\":\"" + (item.IsNull ? "是" : "否") + "\",\"IsMark\":\"" + (item.IsMark ? "是" : "否") + "\",\"IsKey\":\"" + (item.IsKey ? "是" : "否") + "\",\"Defaults\":\"" + item.Defaults + "\",\"Explanation\":\"" + item.Explanation + "\"},";
                }
                Result = Result.TrimEnd(',');
                Result += "]}";
            }
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