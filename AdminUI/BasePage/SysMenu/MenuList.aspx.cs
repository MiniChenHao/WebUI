using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysBLL;
using SysModel;

namespace AdminUI.BasePage.SysMenu
{
    public partial class MenuList : System.Web.UI.Page
    {
        SysMenuBLL SMBll = new SysMenuBLL();
        SysMenuModel model = new SysMenuModel();
        public string MenuJson = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateLoad();
            }
        }

        public void DateLoad()
        {
            List<SysMenuModel> MenuList = SMBll.GetMenuList(model);
            MenuJson = IListToJson(MenuList);
        }

        public string IListToJson(List<SysMenuModel> list)
        {
            string Result = "{\"total\":\"" + model.OUTTotalCount + "\",\"rows\":[";
            foreach (SysMenuModel item in list)
            {
                Result += "{\"MenuID\":\"" + item.MenuID + "\",\"MenuName\":\"" + item.MenuName + "\",\"MenuImg\":\"" + "<img src=\"/Theme/Image/32/" + item.MenuImg + "\" width='16' height='16' />" + "\",\"SortCode\":\"" + item.SortCode + "\",\"NavigateUrl\":\"" + item.NavigateUrl + "\",\"_parentId\":\"" + item.ParentID + "\"}";
            }
            Result += "]}";
            return Result;
        }
    }
}