using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SysBLL;
using SysModel;
using Common.NetEnum;

namespace AdminUI.BasePage.SysUser
{
    /// <summary>
    /// GetUserList 的摘要说明
    /// </summary>
    public class GetUserList : IHttpHandler
    {
        SysUserBLL SUBLL = new SysUserBLL();
        SysUserModel model = new SysUserModel();
        List<SysUserModel> UserList = new List<SysUserModel>();
        public string UserJson = "";
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            GetAllUser(context);
            IListToJson(UserList);
            context.Response.Write(UserJson);
        }

        public void IListToJson(List<SysUserModel> List)
        {
            UserJson = "{\"total\":" + model.OUTTotalCount + ",\"rows\":[";
            foreach (SysUserModel item in List)
            {
                UserJson += "{\"UserID\":\"" + item.UserID + "\",\"UserName\":\"" + item.UserName + "\",\"Password\":\"" + item.Password + "\",\"Email\":\"" + item.Email + "\",\"CreateDate\":\"" + item.CreateDate + "\"},";
            }
            UserJson = UserJson.TrimEnd(',');
            UserJson += "]}";
        }

        public void GetAllUser(HttpContext context)
        {
            model.DeleteFlag = Convert.ToInt32(SysEnum.DeleteFlag.NotRemoved);
            UserList = SUBLL.GetUserList(model);
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