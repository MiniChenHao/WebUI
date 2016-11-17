using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysDAL;
using System.Data;
using SysModel;

namespace SysBLL
{
    public class SysDataBLL
    {
        SysDataDAL DAL;

        public SysDataBLL(string DataBaseName)
        {
            DAL = new SysDataDAL(DataBaseName);
        }

        public DataSet GetTableNameList()
        {
            return DAL.GetTableNameList();
        }

        public List<ColumnModel> GetTableColumnList(string Tablename)
        {
            return DAL.GetTableColumnList(Tablename);
        }
    }
}
