using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Common.NetValidate
{
    [AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = false)]
    public class NotNullAttribute : ArgumentValidationAttribute
    {
        public override void Validate(object value, string argumentName)
        {
            if (value == null)
            {
                throw new ArgumentNullException(argumentName);
            }
        }
    }
}
