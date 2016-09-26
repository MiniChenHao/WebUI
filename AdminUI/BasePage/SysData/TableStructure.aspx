<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TableStructure.aspx.cs" Inherits="AdminUI.BasePage.SysData.TableStructure" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            MainResize(47);
            var TableName = GetQueryString("tableName");
            if (TableName != null && TableName != "") {
                $("#TableName").html(TableName);
                $("#GridTable").datagrid({
                    url: '/BasePage/SysData/GetDataResources.ashx?Type=TableColumnList&tableName=' + TableName,
                    border: true,
                    rownumbers: true,
                    singleSelect: true,
                    columns: [[
                        { field: 'ColumnName', title: '列名', align: 'center' },
                        { field: 'DataType', title: '数据类型', align: 'center' },
                        { field: 'Length', title: '长度', align: 'center' },
                        { field: 'IsNull', title: '是否能为空', align: 'center' },
                        { field: 'IsMark', title: '是否标识', align: 'center' },
                        { field: 'IsKey', title: '是否主键', align: 'center' },
                        { field: 'Defaults', title: '默认值', align: 'center' },
                        { field: 'Explanation', title: '说明', align: 'center' }
                    ]]
                })
            }
            else {
                $("#TableName").html("未选择");
            }
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle">【<span id="TableName"></span>】表结构
            <div style=" float:right; padding-right:2px; ">
                <a title="新增" onclick="ADD()" class="button Btn-Green">
                    <span class="btn-icon" style=" background: url('/Theme/Image/16/add.png') no-repeat center center; "></span>新增
                </a>
            </div>
        </div>
        <div class="MainBody" style=" width:100%;">
            <table id="GridTable" class="easyui-datagrid" fit="true"></table>
        </div>
    </div>
    </form>
</body>
</html>
