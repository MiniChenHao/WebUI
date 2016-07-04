using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Validation;

namespace SysModel
{
    [Serializable]
    public class BaseModel<T> where T : class
    {
        public StringBuilder ValidateTag = new StringBuilder();

        public virtual bool IsVolid()
        {
            var validateResults = Validation.Validate<T>(this as T);
            if (!validateResults.IsValid)
            {
                foreach (var item in validateResults)
                {
                    ValidateTag.Append(string.Format(@"{0}:{1}" + Environment.NewLine, item.Key, item.Message));
                    ValidateTag.Append("\r\n");
                }
                return false;
            }
            return true;
        }

        /// <summary>
        /// 页尺寸
        /// </summary>
        public int PageSize { get; set; }

        /// <summary>
        /// 当前页索引
        /// </summary>
        public int PageIndex { get; set; }

        /// <summary>
        /// 总条数
        /// </summary>
        public int OUTTotalCount { get; set; }

        /// <summary>
        /// 排序字段
        /// </summary>
        public string OrderByFiled { get; set; }

        /// <summary>
        /// 错误代码
        /// </summary>
        public string ErrorCode { get; set; }
    }
}
