using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;

namespace AdminUI.BasePage.SysMenu
{
    public partial class Icons_List : PageBase
    {
        public StringBuilder strImg = new StringBuilder();
        private string _Size;

        protected void Page_Load(object sender, EventArgs e)
        {
            this._Size = base.Request["Size"];
            this.PageControl1.pageHandler += new EventHandler(this.pager_PageChanged);
            if (!base.IsPostBack)
            {
                if (this._Size != null)
                {
                    this.hidden_Size.Value = this._Size;
                }
            }
        }

        private void pager_PageChanged(object sender, EventArgs e)
        {
            this.GetImg();
        }

        public void GetImg()
        {
            int PageIndex = this.PageControl1.PageIndex;
            int PageSize;
            DirectoryInfo dir;
            if (this.hidden_Size.Value == "32")
            {
                PageSize = (this.PageControl1.PageSize = 100);
                dir = new DirectoryInfo(base.Server.MapPath("/Theme/Image/32/"));
            }
            else
            {
                PageSize = (this.PageControl1.PageSize = 200);
                dir = new DirectoryInfo(base.Server.MapPath("/Theme/Image/16/"));
            }
            int rowCount = 0;
            int rowbegin = (PageIndex - 1) * PageSize;
            int rowend = PageIndex * PageSize;
            FileSystemInfo[] fileSystemInfos = dir.GetFileSystemInfos();
            for (int i = 0; i < fileSystemInfos.Length; i++)
            {
                FileInfo fsi = (FileInfo)fileSystemInfos[i];
                //System.Drawing.Image image = System.Drawing.Image.FromFile(fsi.FullName);//获取文件尺寸
                //int Width = image.Width;
                //int Height = image.Height;
                if (rowCount >= rowbegin && rowCount < rowend)
                {
                    this.strImg.Append("<div class=\"divicons\" title='" + fsi.Name + "'>");
                    this.strImg.Append(string.Concat(new string[] { "<img src=\"/Theme/Image/", this.hidden_Size.Value, "/", fsi.Name, "\" />" }));
                    this.strImg.Append("</div>");
                }
                rowCount++;
            }
            this.PageControl1.RecordCount = Convert.ToInt32(rowCount);
        }
    }
}