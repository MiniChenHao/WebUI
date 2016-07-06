<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuList.aspx.cs" Inherits="AdminUI.BasePage.SysMenu.MenuList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Threme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/JScript/mCustomScrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <script src="/Threme/JScript/jquery-easyui-1.4.5/jquery.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script src="/Threme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#TreeTable").treegrid({
                url: '/BasePage/SysMenu/GetMenuList.ashx',
                idField: 'MenuID',
                treeField: 'MenuName',
                frozenColumns: [[
		            { field: 'MenuName', title: '菜单名称', width: 300 }
                ]],
                columns: [[
		            { field: 'MenuImg', title: '图标', align: 'center' },
		            { field: 'SortCode', title: '排序', align: 'center' },
		            { field: 'NavigateUrl', title: '链接地址' }
                ]]
            });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="ManZone">
        <div class="ManTitle">菜单导航</div>
        <div class="ManBody">
            <table id="TreeTable" class="easyui-treegrid" style=" width: 100%; "></table>
        </div>
    </div>
    </form>
</body>
</html>
