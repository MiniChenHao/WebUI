using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;
using SysModel;

namespace SysDAL
{
    public class SystemErrorLogDAL
    {
        Database db = DatabaseFactory.CreateDatabase("ShenWebObject");

        public int Add(SystemErrorLogModel model)
        {
            DbCommand cmd = db.GetStoredProcCommand("PROC_T_SYS_SystemErrorLogAdd");
            db.AddInParameter(cmd, "@ErrorType", DbType.String, model.ErrorType);
            db.AddInParameter(cmd, "@ErrorMessage", DbType.String, model.ErrorMessage);
            db.AddInParameter(cmd, "@PathAndQuery", DbType.String, model.PathAndQuery);
            db.AddInParameter(cmd, "@ClientIP", DbType.String, model.ClientIP);
            db.AddInParameter(cmd, "@ErrorTime", DbType.DateTime, model.ErrorTime);
            db.AddInParameter(cmd, "@StackTrace", DbType.String, model.StackTrace);
            int i = db.ExecuteNonQuery(cmd);
            return i;
        }
    }
}
