using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysBLL;
using SysModel;
using Common.NetEnum;
using Common.NetUI;

namespace AdminUI.BasePage.SysMenu
{
    public partial class AllowButtonForm : PageBase
    {
        SysMenuBLL SMBll = new SysMenuBLL();
        SysButtonBLL SBBLL = new SysButtonBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string MID = (Request["MID"] == null || string.IsNullOrEmpty(Request["MID"].ToString())) ? "" : Request["MID"].ToString();
                if (!string.IsNullOrEmpty(MID))
                {
                    DataLoad(MID);
                }
            }
        }

        public void DataLoad(string MID)
        {
            SysMenuModel MModel = new SysMenuModel();
            MModel.ParentID = MID;
            MModel.DeleteFlag = Convert.ToInt32(SysEnum.DeleteFlag.NotRemoved);
            MModel.MenuType = Convert.ToInt32(SysEnum.MenuType.Button);
            List<SysMenuModel> MList = SMBll.GetMenuList(MModel);
            RpSelectButtonList.DataSource = MList;
            RpSelectButtonList.DataBind();

            SysButtonModel BModel = new SysButtonModel();
            BModel.DeleteFlag = Convert.ToInt32(SysEnum.DeleteFlag.NotRemoved);
            BModel.PageIndex = 1;
            BModel.PageSize = 10000;
            List<SysButtonModel> BList = SBBLL.GetButtonList(BModel);
            RpAllButtonList.DataSource = BList;
            RpAllButtonList.DataBind();
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            ControlAction.CloseTab(this.Page, "保存成功");
        }
    }
}