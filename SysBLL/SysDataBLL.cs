using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysDAL;
using System.Data;

namespace SysBLL
{
    public class SysDataBLL
    {
        SysDataDAL DAL = new SysDataDAL();

        public DataSet GetTableNameList()
        {
            return DAL.GetTableNameList();
        }

        public DataSet GetTableColumnList(string Tablename)
        {
            return DAL.GetTableColumnList(Tablename);
        }
    }
}
