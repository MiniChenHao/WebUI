using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;

namespace Common.NetValidate
{
    public class ValidationInterceptor : IInterceptor
    {
        public void Register(IInterceptor invocation)
        {
            ParameterInfo[] parameters = invocation.Method.GetParameters();
            for (int index = 0; index < parameters.Length; index++)
            {
                var paramInfo = parameters[index];
                var attributes = paramInfo.GetCustomAttributes(typeof(ArgumentValidationAttribute), false);

                if (attributes.Length == 0)
                    continue;

                foreach (ArgumentValidationAttribute attr in attributes)
                {
                    attr.Validate(invocation.Arguments[index], paramInfo.Name);
                }
            }

            invocation.Proceed();
        }
    }
}
