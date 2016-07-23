using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Common.NetEnum;

namespace AdminUI.BasePage.SysMenu
{
    public partial class MenuForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ParentID = Request["ParentID"].ToString();
            if (!IsPostBack)
            {
                DataLoad();
            }
        }

        public void DataLoad()
        {
            List<ListItem> MenuTypeList = EnumHelper.GetEnumList(typeof(SysEnum.MenuType));
            MenuType.Items.Add(new ListItem("-请选择-", ""));
            MenuType.Items.AddRange(MenuTypeList.ToArray());
            MenuType.DataBind();
        }
    }
}