using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Data;

namespace SysDAL
{
    public class ParameterMapper : IParameterMapper
    {
        DbCommand m_command = null;
        private string[] strPara;
        /// <summary>
        /// 参数名称
        /// </summary>
        /// <param name="objpara">参数数组</param>
        public ParameterMapper(string[] objpara)
        {
            strPara = objpara;

        }
        public object GetParameterValue(string parName)
        {
            return m_command.Parameters[parName].Value;
        }
        public void AssignParameters(DbCommand command, params object[] parameterValues)
        {
            m_command = command;
            DbParameter parameter;
            for (int i = 0; i < strPara.Length; i++)
            {
                parameter = m_command.CreateParameter();
                if (strPara[i].Substring(1, 3) == "OUT")//存储过程中，凡是out的参数，参数名前三个字符为大写的OUT
                {
                    parameter.Direction = ParameterDirection.Output;
                    parameter.DbType = DbType.Int32;
                    parameter.ParameterName = strPara[i];
                    m_command.Parameters.Add(parameter);
                }
                else if (strPara[i].Substring(1, 3) == "DOU")//返回值带有小数为Double类型的out参数需要在前面加上DOU
                {
                    parameter.Direction = ParameterDirection.Output;
                    parameter.DbType = DbType.Double;
                    parameter.ParameterName = strPara[i];
                    m_command.Parameters.Add(parameter);
                }
                else
                {
                    parameter.ParameterName = strPara[i];
                    parameter.Value = parameterValues[i];
                    m_command.Parameters.Add(parameter);
                }
            }
        }
    }
}
