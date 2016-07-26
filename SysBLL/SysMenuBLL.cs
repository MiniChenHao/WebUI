using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysDAL;
using SysModel;
using Common.NetEnum;

namespace SysBLL
{
    public class SysMenuBLL
    {
        SysMenuDAL DAL = new SysMenuDAL();

        public List<SysMenuModel> GetMenuList(SysMenuModel model)
        {
            return DAL.GetMenuList(model);
        }

        public int MenuAction(SysMenuModel model, SysEnum.ActionType actionType)
        {
            return DAL.MenuAction(model, actionType);
        }
    }
}
