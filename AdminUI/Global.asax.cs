using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using SysModel;
using SysBLL;

namespace AdminUI
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception LastError = Server.GetLastError();
            SystemErrorLogModel SELM = new SystemErrorLogModel();
            SELM.ErrorType = LastError.GetType().FullName;
            SELM.ErrorMessage = LastError.Message;
            SELM.PathAndQuery = Request.Url.PathAndQuery;
            SELM.ClientIP = Request.UserHostAddress;
            SELM.ErrorTime = DateTime.Now;
            SELM.StackTrace = LastError.StackTrace.Replace("\r\n", "<br/>");
            new SystemErrorLogBLL().Add(SELM);
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}