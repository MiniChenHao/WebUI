using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysDAL;
using SysModel;

namespace SysBLL
{
    public class SysMenuBLL
    {
        SysMenuDAL DAL = new SysMenuDAL();

        public List<SysMenuModel> GetMenuList(SysMenuModel model)
        {
            return DAL.GetMenuList(model);
        }
    }
}
