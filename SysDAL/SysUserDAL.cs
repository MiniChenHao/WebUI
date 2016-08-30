﻿using System;
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
            string[] strPar = new string[] { "@UserName", "@Password" };
            ParameterMapper mapper = new ParameterMapper(strPar);
            var ObjectModel = db.CreateSprocAccessor<SysUserModel>("PROC_T_SYS_UserLogin", mapper, MapBuilder<SysUserModel>.MapNoProperties()
                .Map(p => p.UserID).ToColumn("UserID")
                .Map(p => p.UserName).ToColumn("UserName")
                .Build()
                );
            object[] param = { model.UserName, model.Password };
            list = ObjectModel.Execute(param).ToList<SysUserModel>();
            model.OUTTotalCount = int.Parse(mapper.GetParameterValue("@OUTTotalCount").ToString());
            return list;
        }
    }
}
