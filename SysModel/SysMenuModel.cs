using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SysModel
{
    public class SysMenuModel : BaseModel<SysMenuModel>
    {
        /// <summary>
        /// ID
        /// </summary>
        public Guid MenuID { get; set; }

        /// <summary>
        /// 父级ID
        /// </summary>
        public string ParentID { get; set; }

        /// <summary>
        /// 菜单名称
        /// </summary>
        public string MenuName { get; set; }

        /// <summary>
        /// 图标
        /// </summary>
        public string MenuImg { get; set; }

        /// <summary>
        /// 菜单类型
        /// </summary>
        public int MenuType { get; set; }

        /// <summary>
        /// 链接地址
        /// </summary>
        public string NavigateUrl { get; set; }

        /// <summary>
        /// 排序
        /// </summary>
        public int SortCode { get; set; }

        /// <summary>
        /// 删除标记
        /// </summary>
        public int DeleteFlag { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateDate { get; set; }

        /// <summary>
        /// 行号
        /// </summary>
        public int RowNo { get; set; }
    }
}
