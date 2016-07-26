using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SysModel;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using Common.NetEnum;
using System.Data;

namespace SysDAL
{
    public class SysMenuDAL
    {
        Database db = DatabaseFactory.CreateDatabase("ShenWebObject");

        public List<SysMenuModel> GetMenuList(SysMenuModel model)
        {
            List<SysMenuModel> List = new List<SysMenuModel>();
            string[] strPara = new string[] { "@MenuID", "@ParentID", "@MenuName", "@MenuType", "@DeleteFlag", "@OUTTotalCount" };
            ParameterMapper mapper = new ParameterMapper(strPara);
            var ObjectModel = db.CreateSprocAccessor<SysMenuModel>("PROC_T_SYS_GetMenuList", mapper, MapBuilder<SysMenuModel>.MapNoProperties()
                .Map(p => p.MenuID).ToColumn("MenuID")
                .Map(p => p.ParentID).ToColumn("ParentID")
                .Map(p => p.MenuName).ToColumn("MenuName")
                .Map(p => p.MenuImg).ToColumn("MenuImg")
                .Map(p => p.MenuType).ToColumn("MenuType")
                .Map(p => p.NavigateUrl).ToColumn("NavigateUrl")
                .Map(p => p.SortCode).ToColumn("SortCode")
                .Map(p => p.DeleteFlag).ToColumn("DeleteFlag")
                .Map(p => p.CreateDate).ToColumn("CreateDate")
                .Map(p => p.RowNo).ToColumn("RowNo")
                .Build()
                );
            object[] param = { model.MenuID, model.ParentID, model.MenuName, model.MenuType, model.DeleteFlag, model.OUTTotalCount };
            List = ObjectModel.Execute(param).ToList<SysMenuModel>();
            model.OUTTotalCount = int.Parse(mapper.GetParameterValue("@OUTTotalCount").ToString());
            return List;
        }

        public int MenuAction(SysMenuModel model, SysEnum.ActionType actionType)
        {
            DbCommand cmd = db.GetStoredProcCommand("PROC_T_SYS_MenuEdit");
            db.AddInParameter(cmd, "@Type", DbType.Int32, Convert.ToInt32(actionType));
            db.AddInParameter(cmd, "@MenuID", DbType.Guid, model.MenuID);
            db.AddInParameter(cmd, "@ParentID", DbType.String, model.ParentID);
            db.AddInParameter(cmd, "@MenuName", DbType.String, model.MenuName);
            db.AddInParameter(cmd, "@MenuImg", DbType.String, model.MenuImg);
            db.AddInParameter(cmd, "@MenuType", DbType.Int32, model.MenuType);
            db.AddInParameter(cmd, "@NavigateUrl", DbType.String, model.NavigateUrl);
            db.AddInParameter(cmd, "@DeleteFlag", DbType.Int32, model.DeleteFlag);
            db.AddInParameter(cmd, "@SortCode", DbType.Int32, model.SortCode);
            int i = db.ExecuteNonQuery(cmd);
            return i;
        }
    }
}
