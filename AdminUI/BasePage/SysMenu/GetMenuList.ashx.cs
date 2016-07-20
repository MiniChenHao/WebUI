using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SysModel;
using SysBLL;

namespace AdminUI.BasePage.SysMenu
{
    /// <summary>
    /// GetMenuList 的摘要说明
    /// </summary>
    public class GetMenuList : IHttpHandler
    {
        SysMenuBLL SMBll = new SysMenuBLL();
        SysMenuModel model = new SysMenuModel();
        public string MenuJson = "";
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            DateLoad();
            context.Response.Write(MenuJson);
        }

        public void DateLoad()
        {
            List<SysMenuModel> MenuList = SMBll.GetMenuList(model);
            IListToJson(MenuList);
        }

        public void IListToJson(List<SysMenuModel> list)
        {
            MenuJson = "{\"total\":\"" + model.OUTTotalCount + "\",\"rows\":[";
            GetJsonString(list, "0");
            MenuJson = MenuJson.TrimEnd(',');
            MenuJson += "]}";
        }

        public void GetJsonString(List<SysMenuModel> list, string ParentID)
        {
            foreach (SysMenuModel item in GetRowData(list, ParentID))
            {
                if (item.ParentID == "0")
                {
                    MenuJson += "{\"MenuID\":\"" + item.MenuID + "\",\"MenuName\":\"" + item.MenuName + "\",\"MenuImg\":\"" + "<img src='/Theme/Image/32/" + (string.IsNullOrEmpty(item.MenuImg) ? "5005_flag.png" : item.MenuImg) + "' width='16' height='16' />" + "\",\"SortCode\":\"" + item.SortCode + "\",\"NavigateUrl\":\"" + item.NavigateUrl + "\"},";
                    GetJsonString(list, item.MenuID.ToString());
                }
                else if (item.ParentID == ParentID)
                {
                    MenuJson += "{\"MenuID\":\"" + item.MenuID + "\",\"MenuName\":\"" + item.MenuName + "\",\"MenuImg\":\"" + "<img src='/Theme/Image/32/" + (string.IsNullOrEmpty(item.MenuImg) ? "5005_flag.png" : item.MenuImg) + "' width='16' height='16' />" + "\",\"SortCode\":\"" + item.SortCode + "\",\"NavigateUrl\":\"" + item.NavigateUrl + "\",\"_parentId\":\"" + item.ParentID + "\"},";
                    GetJsonString(list, item.MenuID.ToString());
                }
            }
        }

        public List<SysMenuModel> GetRowData(List<SysMenuModel> list, string ParentID)
        {
            List<SysMenuModel> newList = new List<SysMenuModel>();
            foreach (SysMenuModel item in list)
            {
                if (item.ParentID == ParentID && item.MenuType != -1)
                {
                    newList.Add(item);
                }
            }
            return newList;
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