using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysBLL;
using SysModel;
using Common.NetJson;
using Common.NetBean;

namespace AdminUI
{
    public partial class Index : PageBase
    {
        SysMenuBLL SMBll = new SysMenuBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateLoad();
                this.UserName.InnerText = RequestSession.GetSessionUser().UserName.ToString();
            }
        }

        public void DateLoad()
        {
            SysMenuModel model = new SysMenuModel();
            model.ParentID = "0";
            List<SysMenuModel> MenuList = SMBll.GetMenuList(model);
            TopMenu.DataSource = MenuList;
            TopMenu.DataBind();
        }
    }
}