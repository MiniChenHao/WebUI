﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Common.NetValidate
{
    public abstract class ArgumentValidationAttribute : Attribute
    {
        public abstract void Validate(object value, string argumentName);
    }
}
