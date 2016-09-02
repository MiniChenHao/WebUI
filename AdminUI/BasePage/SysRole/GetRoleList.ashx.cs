using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using SysModel;
using Common.NetEnum;
using SysBLL;

namespace AdminUI.BasePage.SysRole
{
    /// <summary>
    /// GetRoleList 的摘要说明
    /// </summary>
    public class GetRoleList : IHttpHandler, IRequiresSessionState
    {
        SysRoleBLL SRBLL = new SysRoleBLL();
        SysRoleModel model = new SysRoleModel();
        List<SysRoleModel> RoleList = new List<SysRoleModel>();
        public string RoleJson = "";
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            GetAllRole(context);
            IListToJson(RoleList);
            context.Response.Write(RoleJson);
        }

        public void IListToJson(List<SysRoleModel> List)
        {
            RoleJson = "{\"total\":" + model.OUTTotalCount + ",\"rows\":[";
            foreach (SysRoleModel item in List)
            {
                RoleJson += "{\"RoleID\":\"" + item.RoleID + "\",\"RoleName\":\"" + item.RoleName + "\",\"RoleRemark\":\"" + item.RoleRemark + "\",\"AllowEdit\":\"" + item.AllowEdit + "\",\"AllowDelete\":\"" + item.AllowDelete + "\",\"SortCode\":\"" + item.SortCode + "\",\"DeleteFlag\":\"" + item.DeleteFlag + "\",\"CreateDate\":\"" + item.CreateDate + "\",\"ModifyDate\":\"" + item.ModifyDate + "\"},";
            }
            RoleJson = RoleJson.TrimEnd(',');
            RoleJson += "]}";
        }

        public void GetAllRole(HttpContext context)
        {
            model.DeleteFlag = Convert.ToInt32(SysEnum.DeleteFlag.NotRemoved);
            RoleList = SRBLL.GetRoleList(model);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}