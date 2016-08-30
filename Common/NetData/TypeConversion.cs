using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Common.NetData
{
    public class TypeConversion
    {
        public static int StringToInt(string Str)
        {
            if (string.IsNullOrEmpty(Str))
            {
                return 0;
            }
            else
            {
                int Number = 0;
                if (int.TryParse(Str, out Number))
                {
                    return Number;
                }
                else
                {
                    return Number;
                }
            }
        }
    }
}
