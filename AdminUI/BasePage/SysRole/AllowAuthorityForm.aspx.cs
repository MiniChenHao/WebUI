using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using SysBLL;
using SysModel;
using Common.NetEnum;
using System.Data;

namespace AdminUI.BasePage.SysRole
{
    public partial class AllowAuthorityForm : PageBase
    {
        public StringBuilder StrTreeMenu = new StringBuilder();
        private SysMenuBLL SMBLL = new SysMenuBLL();
        private SysRoleBLL SRBLL = new SysRoleBLL();
        public string _RoleName;
        public string _Key;
        protected void Page_Load(object sender, EventArgs e)
        {
            //this._RoleName = base.Server.UrlDecode(base.Request["Role_Name"]);
            //this._Key = base.Request["key"];
            if (!IsPostBack)
            {
                DataLoading();
            }
        }

        public void DataLoading()
        {
            SysMenuModel model = new SysMenuModel();
            model.DeleteFlag = Convert.ToInt32(SysEnum.DeleteFlag.NotRemoved);
            List<SysMenuModel> list = SMBLL.GetMenuList(model);
            List<SysMenuModel> MList = list.Where(p => p.MenuType > 0).ToList();
            List<SysMenuModel> BList = list.Where(p => p.MenuType == -1).ToList();
            GetMenuTreeTable(MList, BList, "0", "node");
        }

        public void GetMenuTreeTable(List<SysMenuModel> MList, List<SysMenuModel> BList, string ParentID, string ParentTRID)
        {
            if (MList.Count > 0)
            {
                List<SysMenuModel> list = MList.Where(p => p.ParentID == ParentID).ToList();
                int eRowIndex = 0;
                foreach (SysMenuModel item in list)
                {
                    string trID = ParentTRID + "-" + eRowIndex.ToString();
                    this.StrTreeMenu.AppendFormat("<tr id='{0}' class='{1}'>", trID, (ParentID == "0" ? "" : ("child-of-" + ParentTRID)));
                    this.StrTreeMenu.AppendFormat("<td style='{0}'><span class=\"folder\">{1}</span></td>", (ParentID == "0" ? "width: 200px;padding-left:20px;" : "padding-left:20px;"), item.MenuName);
                    this.StrTreeMenu.AppendFormat("<td style=' width: 30px; text-align: center;'><img src='/Theme/Image/32/{0}' style='width:16px; height:16px;vertical-align: middle;' alt='' /></td>", item.MenuImg == "" ? "5005_flag.png" : item.MenuImg);
                    this.StrTreeMenu.AppendFormat("<td style=' width: 23px; text-align: left;'><input id='ckb{0}' onclick=\"SelectItem(this.id)\" style='vertical-align: middle;margin-bottom:2px;' type=\"checkbox\" {1}  value=\"{2}\" name=\"checkbox\" /></td>", trID, "", item.MenuID);
                    this.StrTreeMenu.AppendFormat("<td>{0}</td></tr>", GetButtonTreeTable(BList, item.MenuID.ToString(), trID));
                    GetMenuTreeTable(MList, BList, item.MenuID.ToString(), trID);
                    eRowIndex++;
                }
            }
        }

        public string GetButtonTreeTable(List<SysMenuModel> BList, string ParentID, string ParentTRID)
        {
            StringBuilder ButtonHtml = new StringBuilder();
            List<SysMenuModel> list = BList.Where(p => p.ParentID == ParentID).ToList();
            string Result = "";
            if (list.Count > 0)
            {
                int i = 0;
                foreach (SysMenuModel item in list)
                {
                    string trID = ParentTRID + "--" + i.ToString();
                    ButtonHtml.AppendFormat("<input type='checkbox' id='ckb{0}' onclick='SelectItem(this.id)' {1} style='vertical-align: middle;margin-bottom:2px;' value=\"{2}\" /><label for='ckb{0}'>{3}</label>&nbsp;", trID, "", item.MenuID, item.MenuName);
                    i++;
                }
                Result = ButtonHtml.ToString();
            }
            else
            {
                Result = ButtonHtml.ToString();
            }
            return Result;
        }
    }
}