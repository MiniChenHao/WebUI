using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Common.NetBean;
using Common.NetUI;

namespace AdminUI
{
    public class PageBase : Page
    {
        protected override void OnLoad(EventArgs e)
        {
            if (RequestSession.GetSessionUser() == null)
            {
                this.Session.Abandon();
                this.Session.Clear();
                System.Web.UI.Page CurrentPage = (HttpContext.Current.CurrentHandler as System.Web.UI.Page);
                ControlAction.RunScript(CurrentPage, "top.location.href='/Login.html';");
                System.Web.HttpContext.Current.Response.Flush();
                System.Web.HttpContext.Current.Response.End();
            }
            if (null == this.Session["Token"])
            {
                WebHelper.SetToken();
            }
            base.OnLoad(e);
        }
    }
}