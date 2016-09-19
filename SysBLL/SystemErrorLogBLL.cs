using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysDAL;
using SysModel;

namespace SysBLL
{
    public class SystemErrorLogBLL
    {
        SystemErrorLogDAL DAL = new SystemErrorLogDAL();

        public int Add(SystemErrorLogModel model)
        {
            return DAL.Add(model);
        }
    }
}
