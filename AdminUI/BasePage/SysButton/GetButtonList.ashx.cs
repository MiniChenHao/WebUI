using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SysBLL;
using SysModel;
using Common.NetEnum;

namespace AdminUI.BasePage.SysButton
{
    /// <summary>
    /// GetButtonList 的摘要说明
    /// </summary>
    public class GetButtonList : IHttpHandler
    {
        SysButtonBLL SBBLL = new SysButtonBLL();
        SysButtonModel model = new SysButtonModel();
        List<SysButtonModel> ButtonList = new List<SysButtonModel>();
        public string ButtonJson = "";
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            GetAllButton(context);
            IListToJson(ButtonList);
            context.Response.Write(ButtonJson);
        }

        public void IListToJson(List<SysButtonModel> List)
        {
            ButtonJson = "{\"total\":" + model.OUTTotalCount + ",\"rows\":[";
            foreach (SysButtonModel item in List)
            {
                ButtonJson += "{\"ButtonID\":\"" + item.ButtonID + "\",\"ButtonName\":\"" + item.ButtonName + "\",\"ButtonImg\":\"" + "<img src='/Theme/Image/16/" + item.ButtonImg + "' width='16' height='16' />" + "\",\"SortCode\":\"" + item.SortCode + "\",\"ButtonCode\":\"" + item.ButtonCode + "\",\"ButtonRemark\":\"" + item.ButtonRemark + "\",\"CreateDate\":\"" + item.CreateDate + "\"},";
            }
            ButtonJson = ButtonJson.TrimEnd(',');
            ButtonJson += "]}";
        }

        public void GetAllButton(HttpContext context)
        {
            model.DeleteFlag = Convert.ToInt32(SysEnum.DeleteFlag.NotRemoved);
            model.PageIndex = 1;
            model.PageSize = 10000;
            ButtonList = SBBLL.GetButtonList(model);
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