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

        public List<SystemErrorLogModel> GetList(SystemErrorLogModel model)
        {
            List<SystemErrorLogModel> List = new List<SystemErrorLogModel>();
            string[] strPara = new string[] { "@PageIndex", "@PageSize", "@OUTTotalCount" };
            ParameterMapper mapper = new ParameterMapper(strPara);
            var ObjectModel = db.CreateSprocAccessor<SystemErrorLogModel>("PROC_T_SYS_GetSystemErrorLogList", mapper, MapBuilder<SystemErrorLogModel>.MapNoProperties()
                .Map(p => p.ID).ToColumn("ID")
                .Map(p => p.ErrorType).ToColumn("ErrorType")
                .Map(p => p.ErrorMessage).ToColumn("ErrorMessage")
                .Map(p => p.PathAndQuery).ToColumn("PathAndQuery")
                .Map(p => p.ClientIP).ToColumn("ClientIP")
                .Map(p => p.ErrorTime).ToColumn("ErrorTime")
                .Map(p => p.StackTrace).ToColumn("StackTrace")
                .Build()
                );
            object[] param = { model.PageIndex, model.PageSize, model.OUTTotalCount };
            List = ObjectModel.Execute(param).ToList<SystemErrorLogModel>();
            model.OUTTotalCount = int.Parse(mapper.GetParameterValue("@OUTTotalCount").ToString());
            return List;
        }
    }
}
