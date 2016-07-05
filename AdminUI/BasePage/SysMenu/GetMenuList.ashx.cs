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
        string huyt = "{\"total\":9,\"rows\":[ {\"MenuID\":1,\"MenuName\":\"Wyoming\",\"MenuImg\":2000}, {\"MenuID\":11,\"MenuName\":\"Albin\",\"MenuImg\":2000,\"NavigateUrl\":1800,\"_parentId\":1}, {\"MenuID\":12,\"MenuName\":\"Canon\",\"MenuImg\":2000,\"NavigateUrl\":1800,\"_parentId\":1}, {\"MenuID\":13,\"MenuName\":\"Egbert\",\"MenuImg\":2000,\"NavigateUrl\":1800,\"_parentId\":1}, {\"MenuID\":2,\"MenuName\":\"Washington\"}, {\"MenuID\":21,\"MenuName\":\"Bellingham\",\"MenuImg\":2000,\"NavigateUrl\":1800,\"_parentId\":2}, {\"MenuID\":22,\"MenuName\":\"Chehalis\",\"MenuImg\":2000,\"NavigateUrl\":1800,\"_parentId\":2}, {\"MenuID\":23,\"MenuName\":\"Ellensburg\",\"MenuImg\":2000,\"NavigateUrl\":1800,\"_parentId\":2}, {\"MenuID\":24,\"MenuName\":\"Monroe\",\"MenuImg\":2000,\"NavigateUrl\":1800,\"_parentId\":2}]}";
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
            GetRowData(list, "0");
            MenuJson += "]}";
        }

        public void GetRowData(List<SysMenuModel> list, string ParentID)
        {
            List<SysMenuModel> newList = new List<SysMenuModel>();
            foreach (SysMenuModel item in list)
            {
                if (item.ParentID == "0")
                {
                    MenuJson += "{\"MenuID\":\"" + item.MenuID + "\",\"MenuName\":\"" + item.MenuName + "\",\"MenuImg\":\"" + "<img src=\"/Threme/Image/32/" + item.MenuImg + "\" width='16' height='16' />" + "\",\"SortCode\":\"" + item.SortCode + "\",\"NavigateUrl\":\"" + item.NavigateUrl + "\"}";
                    GetRowData(list, item.MenuID.ToString());
                }
                else if (item.ParentID == ParentID)
                {
                    MenuJson += "{\"MenuID\":\"" + item.MenuID + "\",\"MenuName\":\"" + item.MenuName + "\",\"MenuImg\":\"" + "<img src=\"/Threme/Image/32/" + item.MenuImg + "\" width='16' height='16' />" + "\",\"SortCode\":\"" + item.SortCode + "\",\"NavigateUrl\":\"" + item.NavigateUrl + "\",\"_parentId\":\"" + item.ParentID + "\"}";
                    GetRowData(list, item.MenuID.ToString());
                }
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