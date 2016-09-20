using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SysModel
{
    /// <summary>
    /// 系统错误日志
    /// </summary>
    public class SystemErrorLogModel : BaseModel<SystemErrorLogModel>
    {
        /// <summary>
        /// ID
        /// </summary>
        public int ID { get; set; }

        /// <summary>
        /// 错误类型
        /// </summary>
        public string ErrorType { get; set; }

        /// <summary>
        /// 错误描述
        /// </summary>
        public string ErrorMessage { get; set; }

        /// <summary>
        /// 请求地址
        /// </summary>
        public string PathAndQuery { get; set; }

        /// <summary>
        /// 客户端IP
        /// </summary>
        public string ClientIP { get; set; }

        /// <summary>
        /// 错误时间
        /// </summary>
        public DateTime ErrorTime { get; set; }

        /// <summary>
        /// 错误堆栈
        /// </summary>
        public string StackTrace { get; set; }
    }
}
