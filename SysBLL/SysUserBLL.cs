using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysModel;
using SysDAL;

namespace SysBLL
{
    public class SysUserBLL
    {
        SysUserDAL DAL = new SysUserDAL();

        public List<SysUserModel> Login(SysUserModel model)
        {
            return DAL.Login(model);
        }

        public List<SysUserModel> GetUserList(SysUserModel model)
        {
            return DAL.GetUserList(model);
        }
    }
}
