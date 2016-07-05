using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysModel;
using SysBLL;

namespace AdminUI
{
    public partial class West : System.Web.UI.Page
    {
        SysMenuBLL SMBll = new SysMenuBLL();
        public string ParentID;
        public string MenuHtml = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ParentID = Request["PID"] == null ? "" : Request["PID"].ToString();
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(ParentID))
                {
                    DateLoad();
                }
            }
        }

        public void DateLoad()
        {
            SysMenuModel model = new SysMenuModel();
            List<SysMenuModel> MenuList = SMBll.GetMenuList(model);
            MenuHtml = IListToHtml(MenuList, ParentID);
        }

        public string IListToHtml(List<SysMenuModel> list, string ParentID)
        {
            string Result = "";
            foreach (SysMenuModel item in list)
            {
                if (item.ParentID == ParentID)
                {
                    Result += "<ul class=\"menu_title\"><img src=\"/Threme/Image/32/" + (item.MenuImg == "" ? "189.png" : item.MenuImg) + "\" width='16' height='16' />" + item.MenuName + "</ul>";
                    Result += GetChildMenu(list, item.MenuID.ToString());
                }
            }
            return Result;
        }

        public string GetChildMenu(List<SysMenuModel> list, string ParentID)
        {
            string Result = "<ul class=\"menu_body\">";
            foreach (SysMenuModel item in list)
            {
                if (item.ParentID == ParentID)
                {
                    Result += "<li onclick=\"NavMenuUrl('" + item.NavigateUrl + "','" + item.MenuName + "')\"><img src=\"/Threme/Image/32/" + item.MenuImg + "\" width='22' height='22' />" + item.MenuName + "</li>";
                }
            }
            Result += "</ul>";
            return Result;
        }
    }
}