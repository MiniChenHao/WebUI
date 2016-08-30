using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SysModel
{
    public class SysUserModel : BaseModel<SysUserModel>
    {
        /// <summary>
        /// ID
        /// </summary>
        public Guid UserID { get; set; }

        /// <summary>
        /// 用户名
        /// </summary>
        public string UserName { get; set; }

        /// <summary>
        /// 密码
        /// </summary>
        public string Password { get; set; }

        /// <summary>
        /// 邮箱
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateDate { get; set; }
    }
}
