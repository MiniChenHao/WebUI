using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using SysModel;
using SysBLL;
using Common.NetEncrypt;
using Common.NetBean;

namespace AdminUI.AJAX
{
    /// <summary>
    /// Login 的摘要说明
    /// </summary>
    public class Login : IHttpHandler, IRequiresSessionState
    {
        SysUserBLL SUBLL = new SysUserBLL();
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            string Action = (context.Request["Action"] == null || string.IsNullOrEmpty(context.Request["Action"].ToString())) ? "" : context.Request["Action"].ToString();
            string UserName = (context.Request["P1"] == null || string.IsNullOrEmpty(context.Request["P1"].ToString())) ? "" : context.Request["P1"].ToString();
            string Password = (context.Request["P2"] == null || string.IsNullOrEmpty(context.Request["P2"].ToString())) ? "" : context.Request["P2"].ToString();
            string Code = (context.Request["P3"] == null || string.IsNullOrEmpty(context.Request["P3"].ToString())) ? "" : context.Request["P3"].ToString();
            string Result = "";
            switch (Action)
            {
                case "Login":
                    if (Code.ToLower() != context.Session["dt_Session_Code"].ToString().ToLower())
                    {
                        Result = "1";
                    }
                    else
                    {
                        SysUserModel model = new SysUserModel();
                        model.UserName = UserName;
                        model.Password = Md5Helper.MD5(Password, 32);
                        List<SysUserModel> List = SUBLL.Login(model);
                        if (model.OUTTotalCount == 1)
                        {
                            RequestSession.AddSessionUser(new SessionUser { UserName = List[0].UserName, UserId = List[0].UserID, UserPwd = List[0].Password });
                            Result = "3";
                        }
                        else if (model.OUTTotalCount <= 0)
                        {

                        }
                    }
                    context.Response.Write(Result);
                    break;
                case"LogOut":
                    RequestSession.CloseSessionUser();
                    context.Response.Write("OUT");
                    break;
            }

        }


        public bool IsLogin(HttpContext context, string Account)
        {
            return true;
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