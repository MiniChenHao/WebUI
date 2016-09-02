using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SysModel
{
    public class SysRoleModel : BaseModel<SysRoleModel>
    {
        /// <summary>
        /// 行号
        /// </summary>
        public int RowNo { get; set; }

        /// <summary>
        /// ID
        /// </summary>
        public Guid RoleID { get; set; }

        /// <summary>
        /// 角色名称
        /// </summary>
        public string RoleName { get; set; }

        /// <summary>
        /// 角色描述
        /// </summary>
        public string RoleRemark { get; set; }

        /// <summary>
        /// 是否允许编辑
        /// </summary>
        public int AllowEdit { get; set; }

        /// <summary>
        /// 是否允许删除
        /// </summary>
        public int AllowDelete { get; set; }

        /// <summary>
        /// 排序
        /// </summary>
        public int SortCode { get; set; }

        /// <summary>
        /// 删除标志
        /// </summary>
        public int DeleteFlag { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateDate { get; set; }

        /// <summary>
        /// 创建人ID
        /// </summary>
        public string CreatorID { get; set; }

        /// <summary>
        /// 创建人
        /// </summary>
        public string Creator { get; set; }

        /// <summary>
        /// 编辑时间
        /// </summary>
        public DateTime ModifyDate { get; set; }

        /// <summary>
        /// 编辑人ID
        /// </summary>
        public string ModifierID { get; set; }

        /// <summary>
        /// 编辑人
        /// </summary>
        public string Modifier { get; set; }
    }
}
