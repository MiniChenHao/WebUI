using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Common.NetEnum;

namespace Common.NetUI
{
    public static class ControlAction
    {
        /// <summary>
        /// 执行JS
        /// </summary>
        /// <param name="page">调用对象</param>
        /// <param name="Script">JS字符</param>
        public static void RunScript(System.Web.UI.Page page, string Script)
        {
            string strJS = @"<script language='javascript'>" + Script + "</script>";
            page.Response.Write(strJS);
        }

        /// <summary>
        /// 无刷新执行脚本
        /// </summary>
        /// <param name="updatePanel"></param>
        /// <param name="Script"></param>
        public static void RunScript(System.Web.UI.UpdatePanel updatePanel, string Script)
        {
            System.Web.UI.ScriptManager.RegisterStartupScript(updatePanel, updatePanel.Page.GetType(), "Script", Script.ToString(), true);
        }

        /// <summary>
        /// 执行JS方法
        /// </summary>
        /// <param name="page">调用对象</param>
        /// <param name="Msg">提示信息</param>
        public static void ReturnScriptFun(System.Web.UI.Page page, string Script)
        {
            StringBuilder sbAlert = new StringBuilder();
            sbAlert.Append("<script  type='text/javascript'>");
            sbAlert.Append(" jQuery(document).ready(function () {" + Script);
            sbAlert.Append("});");
            sbAlert.Append("</script>");
            if (!page.ClientScript.IsStartupScriptRegistered(page.GetType(), "alert"))
            {
                page.ClientScript.RegisterStartupScript(page.GetType(), "alert", sbAlert.ToString());
            }
        }

        /// <summary>
        /// Window警告消息
        /// </summary>
        /// <param name="page"></param>
        /// <param name="Msg"></param>
        public static void AlertMsg(System.Web.UI.Page page, string Msg)
        {
            if (string.IsNullOrEmpty(Msg))
                return;
            else
            {
                Msg = Msg.Replace('\'', '"');
                StringBuilder sbAlert = new StringBuilder();
                sbAlert.Append("<script  type='text/javascript'>");
                sbAlert.Append(" jQuery(document).ready(function () {");
                sbAlert.Append(" showWarningMsg('" + Msg + "');");
                sbAlert.Append("});");
                sbAlert.Append("</script>");
                if (!page.ClientScript.IsStartupScriptRegistered(page.GetType(), "alert"))
                {
                    page.ClientScript.RegisterStartupScript(page.GetType(), "alert", sbAlert.ToString());
                }
            }
        }

        public static void TipMsg(System.Web.UI.Page page, string Msg = "", int TimeOut = 1000, SysEnum.MsgType MsgType = SysEnum.MsgType.SUCCESS)
        {
            if (string.IsNullOrEmpty(Msg))
                return;
            else
            {
                Msg = Msg.Replace('\'', '"');
                StringBuilder sbAlert = new StringBuilder();
                sbAlert.Append("<script  type='text/javascript'>");
                sbAlert.Append(" jQuery(document).ready(function () {");
                sbAlert.Append(" showTipsMsg('" + Msg + "','" + TimeOut + "','" + Convert.ToInt32(MsgType) + "');");
                sbAlert.Append("});");
                sbAlert.Append("</script>");
                if (!page.ClientScript.IsStartupScriptRegistered(page.GetType(), "alert"))
                {
                    page.ClientScript.RegisterStartupScript(page.GetType(), "alert", sbAlert.ToString());
                }
            }
        }

        /// <summary>
        /// 关闭Tab,顶部提示消息
        /// </summary>
        /// <param name="page"></param>
        /// <param name="Msg"></param>
        public static void CloseTab(System.Web.UI.Page page, string Msg = "", int TimeOut = 1000, SysEnum.MsgType MsgType = SysEnum.MsgType.SUCCESS)
        {
            StringBuilder sbAlert = new StringBuilder();
            sbAlert.Append("<script  type='text/javascript'>");
            sbAlert.Append(" jQuery(document).ready(function () {");
            sbAlert.Append(" showTipsMsg('" + Msg + "','" + TimeOut + "','" + Convert.ToInt32(MsgType) + "');");
            sbAlert.Append(" setTimeout(function(){ CloseTab();},1000)");
            sbAlert.Append("});");
            sbAlert.Append("</script>");
            if (!page.ClientScript.IsStartupScriptRegistered(page.GetType(), "alert"))
            {
                page.ClientScript.RegisterStartupScript(page.GetType(), "alert", sbAlert.ToString());
            }
        }

        /// <summary>
        /// 关闭Window,顶部提示消息
        /// </summary>
        /// <param name="page"></param>
        /// <param name="Msg"></param>
        public static void CloseWindow(System.Web.UI.Page page, string Msg = "", int TimeOut = 1000, SysEnum.MsgType MsgType = SysEnum.MsgType.SUCCESS)
        {
            StringBuilder sbAlert = new StringBuilder();
            sbAlert.Append("<script  type='text/javascript'>");
            sbAlert.Append(" jQuery(document).ready(function () {");
            sbAlert.Append(" showTipsMsg('" + Msg + "','" + TimeOut + "','" + Convert.ToInt32(MsgType) + "');");
            sbAlert.Append(" RefreshCenter(); OpenClose();");
            sbAlert.Append("});");
            sbAlert.Append("</script>");
            if (!page.ClientScript.IsStartupScriptRegistered(page.GetType(), "alert"))
            {
                page.ClientScript.RegisterStartupScript(page.GetType(), "alert", sbAlert.ToString());
            }
        }
    }
}
