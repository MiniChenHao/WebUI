using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Common.NetEnum;
using SysModel;
using SysBLL;
using Common.NetUI;
using System.Text.RegularExpressions;
using Common.NetData;

namespace AdminUI.BasePage.SysMenu
{
    public partial class MenuForm : System.Web.UI.Page
    {
        SysMenuBLL SMBll = new SysMenuBLL();
        string MID;
        string PID;
        protected void Page_Load(object sender, EventArgs e)
        {
            MID = Request["MID"] == null ? "" : Request["MID"].ToString();
            PID = Request["PID"] == null ? "" : Request["PID"].ToString();
            if (!IsPostBack)
            {
                DataLoad();
                if (!string.IsNullOrEmpty(PID))
                {
                    this.ParentTree.Value = PID;
                    this.ParentID.Value = PID;
                }
            }
        }

        public void DataLoad()
        {
            List<ListItem> MenuTypeList = EnumHelper.GetEnumList(typeof(SysEnum.MenuType));
            MenuTypeList = MenuTypeList.Where(p => Convert.ToInt32(p.Value) > 0).ToList();
            MenuType.Items.Add(new ListItem("-请选择-", ""));
            MenuType.Items.AddRange(MenuTypeList.ToArray());
            MenuType.DataBind();

            if (MID != "" )
            {
                if (MID != "00000000-0000-0000-0000-000000000000")
                {
                    SysMenuModel model = new SysMenuModel();
                    model.MenuID = new Guid(MID);
                    model.DeleteFlag = Convert.ToInt32(SysEnum.DeleteFlag.NotRemoved);
                    List<SysMenuModel> MenuList = SMBll.GetMenuList(model);
                    this.MenuName.Value = MenuList.First().MenuName;
                    this.ParentID.Value = MenuList.First().ParentID;
                    this.ParentTree.Value = MenuList.First().ParentID;
                    this.MenuType.Value = MenuList.First().MenuType.ToString();
                    this.MenuImg.Value = MenuList.First().MenuImg;
                    this.Img_Menu_Img.Src = MenuList.First().MenuImg == "" ? "/Theme/Image/illustration.png" : ("/Theme/Image/32/" + MenuList.First().MenuImg);
                    this.SortCode.Value = MenuList.First().SortCode.ToString();
                    this.NavigateUrl.Value = MenuList.First().NavigateUrl;
                }
                else
                {
                    ShowMsgHelper.AlertMsg("请选择菜单！");
                }
            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            SysMenuModel model = new SysMenuModel();
            model.ParentID = this.ParentID.Value.Trim();
            model.MenuName = this.MenuName.Value.Trim();
            model.MenuImg = this.MenuImg.Value.Trim();
            model.MenuType = TypeConversion.StringToInt(this.MenuType.Value.Trim());
            model.NavigateUrl = this.NavigateUrl.Value.Trim();
            model.SortCode = TypeConversion.StringToInt(this.SortCode.Value.Trim());
            model.DeleteFlag = 0;
            model.CreateDate = new DateTime();
            if (model.IsVolid())
            {
                if (MID == "")
                {
                    model.MenuID = Guid.NewGuid();
                    int i = SMBll.MenuAction(model, Common.NetEnum.SysEnum.ActionType.ADD);
                    if (i > 0)
                    {
                        ShowMsgHelper.AlertMsg("添加成功！");
                    }
                    else
                    {
                        ShowMsgHelper.AlertMsg("添加失败！");
                    }
                }
                else
                {
                    model.MenuID = new Guid(MID);
                    int i = SMBll.MenuAction(model, Common.NetEnum.SysEnum.ActionType.UPDATE);
                    if (i > 0)
                    {
                        ShowMsgHelper.AlertMsg("修改成功！");
                    }
                    else
                    {
                        ShowMsgHelper.AlertMsg("修改失败！");
                    }
                }
            }
            else
            {
                ShowMsgHelper.ShowScript("showWarningMsg('" + model.ValidateTag.ToString() + "');");
            }
        }
    }
}