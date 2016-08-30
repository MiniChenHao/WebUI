using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysModel;
using SysDAL;

namespace SysBLL
{
    public class SysButtonBLL
    {
        SysButtonDAL DAL = new SysButtonDAL();

        public List<SysButtonModel> GetButtonList(SysButtonModel model)
        {
            return DAL.GetButtonList(model);
        }
    }
}
