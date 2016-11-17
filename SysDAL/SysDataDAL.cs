using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using SysModel;

namespace SysDAL
{
    public class SysDataDAL
    {
        Database db;

        public SysDataDAL(string DataBaseName)
        {
            db = DatabaseFactory.CreateDatabase(DataBaseName);
        }

        public DataSet GetTableNameList()
        {
            DbCommand cmd = db.GetStoredProcCommand("PROC_T_SYS_GetTableNameList");
            DataSet ds = db.ExecuteDataSet(cmd);
            return ds;
        }

        public List<ColumnModel> GetTableColumnList(string TableName)
        {
            List<ColumnModel> list = new List<ColumnModel>();
            string[] strPar = new string[] { "@TableName" };
            ParameterMapper mapper = new ParameterMapper(strPar);
            var ObjectModel = db.CreateSprocAccessor<ColumnModel>("PROC_T_SYS_GetTableColumnList", mapper, MapBuilder<ColumnModel>.MapNoProperties()
                .Map(p => p.RowNo).ToColumn("RowNo")
                .Map(p => p.ColumnName).ToColumn("ColumnName")
                .Map(p => p.DataType).ToColumn("DataType")
                .Map(p => p.Length).ToColumn("Length")
                .Map(p => p.IsNull).ToColumn("IsNull")
                .Map(p => p.IsMark).ToColumn("IsMark")
                .Map(p => p.IsKey).ToColumn("IsKey")
                .Map(p => p.Defaults).ToColumn("Defaults")
                .Map(p => p.Explanation).ToColumn("Explanation")
                .Build()
                );
            object[] param = { TableName };
            list = ObjectModel.Execute(param).ToList<ColumnModel>();
            return list;
        }
    }
}
