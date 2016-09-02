using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysDAL;
using SysModel;

namespace SysBLL
{
    public class SysRoleBLL
    {
        SysRoleDAL DAL = new SysRoleDAL();

        public List<SysRoleModel> GetRoleList(SysRoleModel model)
        {
            return DAL.GetRoleList(model);
        }
    }
}
