using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SysModel;
using SysBLL;
using Common.NetEnum;

namespace AdminUI.BasePage.SysMenu
{
    /// <summary>
    /// GetMenuList 的摘要说明
    /// </summary>
    public class GetMenuList : IHttpHandler
    {
        SysMenuBLL SMBll = new SysMenuBLL();
        SysMenuModel model = new SysMenuModel();
        List<SysMenuModel> MenuList = new List<SysMenuModel>();
        public string MenuJson = "";
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string Type = context.Request["Type"] == null ? "" : context.Request["Type"];
            string MID = context.Request["MID"] == null ? "" : context.Request["MID"];
            DateLoad();
            switch (Type)
            {
                case "MenuList":
                    IListToJson(MenuList);
                    break;
                case "MenuDropDownList":
                    if (MID != "")
                    {
                        BindSelect(MenuList.Where(p => p.MenuID.ToString() != MID).ToList(), "0", 0);
                    }
                    else
                    {
                        BindSelect(MenuList, "0", 0);
                    }
                    break;
            }
            context.Response.Write(MenuJson);
        }

        public void DateLoad()
        {
            model.DeleteFlag = Convert.ToInt32(SysEnum.DeleteFlag.NotRemoved);
            MenuList = SMBll.GetMenuList(model);
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

        public void BindSelect(List<SysMenuModel> dt, string Pid, int Level)
        {
            List<SysMenuModel> List = dt.Where(p => p.ParentID == Pid && p.MenuType > 0).ToList();
            if (List.Count > 0 && Level == 0)
            {
                MenuJson += "[{\"id\":\"0\",\"text\":\"-根目录-\"},";
            }
            else if (List.Count > 0 && Level > 0)
            {
                MenuJson += ",\"children\":[";
            }
            foreach (SysMenuModel model in List)
            {
                MenuJson += "{\"id\":\"" + model.MenuID + "\",\"text\":\"" + model.MenuName + "\"";
                Level++;
                BindSelect(dt, model.MenuID.ToString(), Level);
                MenuJson += "},";
            }
            if (List.Count > 0 && Level > 0)
            {
                MenuJson = MenuJson.TrimEnd(',');
                MenuJson += "]";
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