using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using SysModel;

namespace SysDAL
{
    public class SysButtonDAL
    {
        Database db = DatabaseFactory.CreateDatabase("ShenWebObject");

        public List<SysButtonModel> GetButtonList(SysButtonModel model)
        {
            List<SysButtonModel> List = new List<SysButtonModel>();
            string[] strPara = new string[] { "@ButtonID", "@ButtonName", "@DeleteFlag", "@OUTTotalCount", "@PageIndex", "@PageSize" };
            ParameterMapper mapper = new ParameterMapper(strPara);
            var ObjectModel = db.CreateSprocAccessor<SysButtonModel>("PROC_T_SYS_GetButtonList", mapper, MapBuilder<SysButtonModel>.MapNoProperties()
                .Map(p => p.ButtonID).ToColumn("ButtonID")
                .Map(p => p.ButtonName).ToColumn("ButtonName")
                .Map(p => p.ButtonImg).ToColumn("ButtonImg")
                .Map(p => p.ButtonCode).ToColumn("ButtonCode")
                .Map(p => p.ButtonType).ToColumn("ButtonType")
                .Map(p => p.SortCode).ToColumn("SortCode")
                .Map(p => p.DeleteFlag).ToColumn("DeleteFlag")
                .Map(p => p.CreateDate).ToColumn("CreateDate")
                .Map(p => p.ButtonRemark).ToColumn("ButtonRemark")
                .Map(p => p.RowNo).ToColumn("RowNo")
                .Build()
                );
            object[] param = { model.ButtonID, model.ButtonName, model.DeleteFlag, model.OUTTotalCount, model.PageIndex, model.PageSize };
            List = ObjectModel.Execute(param).ToList<SysButtonModel>();
            model.OUTTotalCount = int.Parse(mapper.GetParameterValue("@OUTTotalCount").ToString());
            return List;
        }
    }
}
