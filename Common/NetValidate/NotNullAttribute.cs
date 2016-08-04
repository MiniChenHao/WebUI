using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Common.NetValidate
{
    public class NotNullAttribute : ArgumentValidationAttribute
    {
        [AttributeUsage(AttributeTargets.Parameter)]
        public override void Validate(object value, string argumentName)
        {
            if (value == null)
            {
                throw new ArgumentNullException(argumentName);
            }
        }
    }
}
