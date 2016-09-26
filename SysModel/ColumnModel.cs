using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SysModel
{
    public class ColumnModel
    {
        /// <summary>
        /// 序号
        /// </summary>
        public int RowNo { get; set; }

        /// <summary>
        /// 列名
        /// </summary>
        public string ColumnName { get; set; }

        /// <summary>
        /// 数据类型
        /// </summary>
        public string DataType { get; set; }

        /// <summary>
        /// 长度
        /// </summary>
        public int Length { get; set; }

        /// <summary>
        /// 是否能为空
        /// </summary>
        public bool IsNull { get; set; }

        /// <summary>
        /// 是否标识
        /// </summary>
        public bool IsMark { get; set; }

        /// <summary>
        /// 是否主键
        /// </summary>
        public bool IsKey { get; set; }

        /// <summary>
        /// 默认值
        /// </summary>
        public string Defaults { get; set; }

        /// <summary>
        /// 说明
        /// </summary>
        public string Explanation { get; set; }
    }
}
