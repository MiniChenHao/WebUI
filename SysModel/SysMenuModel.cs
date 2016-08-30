using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Validation;
using Microsoft.Practices.EnterpriseLibrary.Validation.Validators;

namespace SysModel
{
    [Serializable]
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
        [NotNullValidator(MessageTemplate = "不能为空!")]
        public string MenuName { get; set; }

        /// <summary>
        /// 图标
        /// </summary>
        public string MenuImg { get; set; }

        /// <summary>
        /// 菜单类型
        /// </summary>
        [RangeValidator(0, RangeBoundaryType.Exclusive, 100, RangeBoundaryType.Inclusive, MessageTemplate = "请选择菜单类型!")]
        public int MenuType { get; set; }

        /// <summary>
        /// 链接地址
        /// </summary>
        public string NavigateUrl { get; set; }

        /// <summary>
        /// 排序
        /// </summary>
        [RangeValidator(0, RangeBoundaryType.Exclusive, 100, RangeBoundaryType.Inclusive, MessageTemplate = "排序请填写正整数!")]
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
