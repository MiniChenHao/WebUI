using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SysModel
{
    public class SysButtonModel : BaseModel<SysButtonModel>
    {
        /// <summary>
        /// ID
        /// </summary>
        public Guid ButtonID { get; set; }

        /// <summary>
        /// 按钮名称
        /// </summary>
        public string ButtonName { get; set; }

        /// <summary>
        /// 按钮图标
        /// </summary>
        public string ButtonImg { get; set; }

        /// <summary>
        /// 按钮代码
        /// </summary>
        public string ButtonCode { get; set; }

        /// <summary>
        /// 按钮类型
        /// </summary>
        public int ButtonType { get; set; }

        /// <summary>
        /// 排序
        /// </summary>
        public int SortCode { get; set; }

        /// <summary>
        /// 删除标识
        /// </summary>
        public int DeleteFlag { get; set; }

        /// </summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateDate { get; set; }

        /// <summary>
        /// 描述
        /// </summary>
        public string ButtonRemark { get; set; }

        /// <summary>
        /// 行号
        /// </summary>
        public int RowNo { get; set; }
    }
}
