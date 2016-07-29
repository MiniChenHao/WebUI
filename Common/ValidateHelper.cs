using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel;

namespace Common
{
    public class ValidateHelper
    {
        //电子邮件校验常量
        public const string REGEXP_IS_EMAIL = @"^w+((-w+)|(.w+))*@w+((.|-)w+)*.w+$";
        //网址校验常量
        public const string REGEXP_IS_VALID_URL = @"^http://([w-]+.)+[w-]+(/[w- ./%&=]*)";
        //邮编校验常量
        public const string REGEXP_IS_VALID_ZIP = @"d{6}";
        //身份证校验常量
        public const string REGEXP_IS_VALID_SSN = @"d{18}|d{15}";
        //整数校验常量
        public const string REGEXP_IS_VALID_INT = @"^d{1,}$";
        //数值校验常量 "
        public const string REGEXP_IS_VALID_DEMICAL = @"^-(0|d+)(.d+)$";
        //日期校验常量
        public const string REGEXP_IS_VALID_DATE = @"^(:(:(:(:1[6-9]|[2-9]d)(:0[48]|[2468][048]|[13579][26])|(:(:16|[2468][048]|[3579][26])00)))(/|-|.)(:021(:29))$)|(:(:1[6-9]|[2-9]d)d{2})(/|-|.)(:(:(:0[13578]|1[02])2(:31))|(:(:0[1,3-9]|1[0-2])2(29|30))|(:(:0[1-9])|(:1[0-2]))2(:0[1-9]|1d|2[0-8]))$";

        public ValidateHelper() { }


    
    }
}
