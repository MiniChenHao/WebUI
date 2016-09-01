using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysModel;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace SysDAL
{
    public class SysUserDAL
    {
        Database db = DatabaseFactory.CreateDatabase("ShenWebObject");

        public List<SysUserModel> Login(SysUserModel model)
        {
            List<SysUserModel> list = new List<SysUserModel>();
            string[] strPar = new string[] { "@UserName", "@Password", "@OUTTotalCount" };
            ParameterMapper mapper = new ParameterMapper(strPar);
            var ObjectModel = db.CreateSprocAccessor<SysUserModel>("PROC_T_SYS_UserLogin", mapper, MapBuilder<SysUserModel>.MapNoProperties()
                .Map(p => p.UserID).ToColumn("UserID")
                .Map(p => p.UserName).ToColumn("UserName")
                .Map(p => p.Password).ToColumn("Password")
                .Build()
                );
            object[] param = { model.UserName, model.Password, model.OUTTotalCount };
            list = ObjectModel.Execute(param).ToList<SysUserModel>();
            model.OUTTotalCount = int.Parse(mapper.GetParameterValue("@OUTTotalCount").ToString());
            return list;
        }

        public List<SysUserModel> GetUserList(SysUserModel model)
        {
            List<SysUserModel> list = new List<SysUserModel>();
            string[] strPar = new string[] { "@UserID", "@UserName", "@DeleteFlag", "@OUTTotalCount" };
            ParameterMapper mapper = new ParameterMapper(strPar);
            var ObjectModel = db.CreateSprocAccessor<SysUserModel>("PROC_T_SYS_GetUserList", mapper, MapBuilder<SysUserModel>.MapNoProperties()
                .Map(p => p.UserID).ToColumn("UserID")
                .Map(p => p.UserName).ToColumn("UserName")
                .Map(p => p.Password).ToColumn("Password")
                .Map(p => p.Email).ToColumn("Email")
                .Map(p => p.CreateDate).ToColumn("CreateDate")
                .Map(p => p.DeleteFlag).ToColumn("DeleteFlag")
                .Build()
                );
            object[] param = { model.UserID, model.UserName, model.DeleteFlag, model.OUTTotalCount };
            list = ObjectModel.Execute(param).ToList<SysUserModel>();
            model.OUTTotalCount = int.Parse(mapper.GetParameterValue("@OUTTotalCount").ToString());
            return list;
        }
    }
}
