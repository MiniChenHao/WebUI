using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace SysDAL
{
    public class SysDataDAL
    {
        Database db = DatabaseFactory.CreateDatabase("ShenWebObject");

        public DataSet GetTableNameList()
        {
            DbCommand cmd = db.GetStoredProcCommand("PROC_T_SYS_GetTableNameList");
            DataSet ds = db.ExecuteDataSet(cmd);
            return ds;
        }

        public DataSet GetTableColumnList(string TableName)
        {
            DbCommand cmd = db.GetStoredProcCommand("PROC_T_SYS_GetTableColumnList");
            db.AddInParameter(cmd, "@TableName", DbType.String, TableName);
            DataSet ds = db.ExecuteDataSet(cmd);
            return ds;
        }
    }
}
