﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace Common.NetEnum
{
    public class SysEnum
    {
        /// <summary>
        /// 菜单类型
        /// </summary>
        public enum MenuType
        {
            [Description("按钮")]
            Button = -1,
            [Description("模块")]
            Module = 1,
            [Description("父节")]
            FatherNode = 2,
            [Description("子节")]
            SonNode = 3,
            [Description("窗口")]
            Window = 4,
            [Description("其他")]
            Other = 5,
        }

        /// <summary>
        /// 删除标记
        /// </summary>
        public enum DeleteFlag
        {
            [Description("未删除")]
            NotRemoved = 0,
            [Description("已删除")]
            Deleted = 1,
        }

        /// <summary>
        /// 操作类型
        /// </summary>
        public enum ActionType
        {
            /// <summary>
            /// 新增  
            /// </summary>
            [Description("新增")]
            ADD = 1,
            /// <summary>
            /// 更新  
            /// </summary>
            [Description("更新")]
            UPDATE = 2,
            /// <summary>
            /// 删除  
            /// </summary>
            [Description("删除")]
            DELETE = 3,
            /// <summary>
            /// 查询
            /// </summary>
            [Description("查询")]
            QUERY = 4
        }
    }
}
