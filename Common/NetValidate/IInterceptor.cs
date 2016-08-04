using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Common.NetValidate
{
    public interface IInterceptor
    {
        void Register([NotNull] string name, [InRange(10, 70)] int age);
    }
}
