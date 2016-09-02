using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysModel;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace SysDAL
{
    public class SysRoleDAL
    {
        Database db = DatabaseFactory.CreateDatabase("ShenWebObject");

        public List<SysRoleModel> GetRoleList(SysRoleModel model)
        {
            List<SysRoleModel> List = new List<SysRoleModel>();
            string[] strPar = new string[] { "@RoleID", "@RoleName", "@DeleteFlag", "@OUTTotalCount" };
            ParameterMapper mapper = new ParameterMapper(strPar);
            var ObjectModel = db.CreateSprocAccessor<SysRoleModel>("PROC_T_SYS_GetRoleList", mapper, MapBuilder<SysRoleModel>.MapNoProperties()
                .Map(p => p.RoleID).ToColumn("RoleID")
                .Map(p => p.RoleName).ToColumn("RoleName")
                .Map(p => p.RoleRemark).ToColumn("RoleRemark")
                .Map(p => p.AllowEdit).ToColumn("AllowEdit")
                .Map(p => p.AllowDelete).ToColumn("AllowDelete")
                .Map(p => p.SortCode).ToColumn("SortCode")
                .Map(p => p.DeleteFlag).ToColumn("DeleteFlag")
                .Map(p => p.CreateDate).ToColumn("CreateDate")
                .Map(p => p.CreatorID).ToColumn("CreatorID")
                .Map(p => p.ModifyDate).ToColumn("ModifyDate")
                .Map(p => p.ModifierID).ToColumn("ModifierID")
                .Build()
                );
            object[] param = { model.RoleID, model.RoleName, model.DeleteFlag, model.OUTTotalCount };
            List = ObjectModel.Execute(param).ToList<SysRoleModel>();
            model.OUTTotalCount = int.Parse(mapper.GetParameterValue("@OUTTotalCount").ToString());
            return List;
        }
    }
}
