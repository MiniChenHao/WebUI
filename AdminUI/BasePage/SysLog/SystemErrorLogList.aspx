<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SystemErrorLogList.aspx.cs" Inherits="AdminUI.BasePage.SysLog.SystemErrorLogList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script src="/Theme/JScript/datagrid-detailview.js" type="text/javascript"></script>
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            MainResize(47);
            $("#GridTable").datagrid({
                url: '/BasePage/SysLog/GetLogList.ashx?Type=SEL',
                pagination: true,
                border: true,
                rownumbers: true,
                singleSelect: true,
                fitColumns: true,
                view: detailview,
                columns: [[
                    { field: 'ErrorType', title: '错误类型', align: 'center' },
                    { field: 'ErrorMessage', title: '错误描述', align: 'left' },
                    { field: 'ClientIP', title: '客户IP', align: 'center' },
                    { field: 'PathAndQuery', title: '访问地址', align: 'left' },
                    { field: 'ErrorTime', title: '时间', align: 'center' }
                ]],
                detailFormatter: function (index, row) {
                    return '<div style=\" background-color: #ffff00; \">'
                    + '错误类型：' + row.ErrorType
                    + '<br/><br/>错误描述：' + row.ErrorMessage
                    + '<br/><br/>调用堆栈：<br/><br/>' + row.StackTrace + '</div>';
                },
                onExpandRow: function (index, row) {
                }
            })
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle">系统错误列表
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
