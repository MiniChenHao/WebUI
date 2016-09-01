using System;
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
            /// <summary>
            /// 按钮
            /// </summary>
            [Description("按钮")]
            Button = -1,

            /// <summary>
            /// 模块
            /// </summary>
            [Description("模块")]
            Module = 1,

            /// <summary>
            /// 父节
            /// </summary>
            [Description("父节")]
            FatherNode = 2,

            /// <summary>
            /// 子节
            /// </summary>
            [Description("子节")]
            SonNode = 3,

            /// <summary>
            /// 窗口
            /// </summary>
            [Description("窗口")]
            Window = 4,

            /// <summary>
            /// 其他
            /// </summary>
            [Description("其他")]
            Other = 5,
        }

        /// <summary>
        /// 删除标记
        /// </summary>
        public enum DeleteFlag
        {
            /// <summary>
            /// 全部
            /// </summary>
            [Description("全部")]
            ALL = -1,

            /// <summary>
            /// 未删除
            /// </summary>
            [Description("未删除")]
            NotRemoved = 0,

            /// <summary>
            /// 已删除
            /// </summary>
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

        public enum MsgType
        {
            /// <summary>
            /// 警告
            /// </summary>
            [Description("警告")]
            WARNING = 3,

            /// <summary>
            /// 成功
            /// </summary>
            [Description("成功")]
            SUCCESS = 4,

            /// <summary>
            /// 错误
            /// </summary>
            [Description("错误")]
            ERROR = 5
        }
    }
}
