﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Common.NetValidate
{
    [AttributeUsage(AttributeTargets.Property | AttributeTargets.Field, AllowMultiple = false)]
    public class InRangeAttribute : ArgumentValidationAttribute
    {
        private int min;
        private int max;

        public InRangeAttribute(int min, int max)
        {
            this.min = min;
            this.max = max;
        }

        public override void Validate(object value, string argumentName)
        {
            int intValue = (int)value;
            if (intValue < min || intValue > max)
            {
                throw new ArgumentOutOfRangeException(argumentName, string.Format("min={0},max={1}", min, max));
            }
        }
    }
}
