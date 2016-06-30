using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace Common.NetEnum
{
    public class SysEnum
    {
        public enum MenuType
        {
            [Description("模块")]
            Module = 1,
            [Description("父节")]
            FatherNode = 2,
            [Description("子节")]
            SonNode = 3,
            [Description("按钮")]
            Button = 4,
            [Description("其他")]
            Other = 5,
        }

        public enum DeleteMark
        {
            [Description("已删除")]
            Deleted = 0,
            [Description("未删除")]
            NotRemoved = 1,
        }
    }
}
