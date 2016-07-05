<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuList.aspx.cs" Inherits="AdminUI.BasePage.SysMenu.MenuList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Threme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <script src="../../Threme/JScript/jquery-easyui-1.4.5/jquery.min.js" type="text/javascript"></script>
    <script src="../../Threme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#TreeTable").treegrid({
                url: '/BasePage/SysMenu/GetMenuList.ashx',
                idField: 'MenuID',
                treeField: 'MenuName',
                columns: [[
		            { field: 'MenuName', width: 200 },
		            { field: 'MenuImg'},
		            { field: 'SortCode'},
		            { field: 'NavigateUrl', width: 300 }
                ]]
            });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="ManZone">
        <div class="ManTitle">菜单导航</div>
        <table id="TreeTable" class="easyui-treegrid" style=" width: 100%; height:250px"></table>
    </div>
    </form>
</body>
</html>
