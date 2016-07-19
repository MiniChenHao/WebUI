<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuList.aspx.cs" Inherits="AdminUI.BasePage.SysMenu.MenuList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Threme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <script src="/Threme/JScript/jquery-easyui-1.4.5/jquery.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script src="/Threme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            ManResize();
            $("#TreeTable").treegrid({
                url: '/BasePage/SysMenu/GetMenuList.ashx',
                idField: 'MenuID',
                treeField: 'MenuName',
                rownumbers: true,
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

        function ManResize() {
            resizeU()
            $(window).resize(resizeU);
            function resizeU() {
                var windowH = $(window).height();
                $(".ManBody").height(windowH - 47);
            }
        }

        function ADD() {
            var node = $('#TreeTable').treegrid('getSelected');
            var url = "/BasePage/SysMenu/MenuForm.aspx";
            top.openDialog(url, "MenuForm", '导航菜单信息 - 添加', 'auto', 'auto', 50, 50);
        }

        function DELETE() {
            top.showConfirmMsg("确认要删除吗？", function () {
                alert("DELETE");
            })
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="ManZone">
        <div class="ManTitle">
            菜单导航
            <div style=" float:right; padding-right:2px; ">
                <a title="新增" onclick="ADD()" class="button Btn-Green">
                    <span class="btn-icon" style=" background: url('/Threme/Image/16/add.png') no-repeat center center; "></span>新增
                </a>
                <a title="删除" onclick="DELETE()" class="button Btn-Green">
                    <span class="btn-icon" style=" background: url('/Threme/Image/16/delete.png') no-repeat center center; "></span>删除
                </a>
            </div>
        </div>
        <div class="ManBody" style=" width:100%;">
            <table id="TreeTable" class="easyui-treegrid" fit="true"></table>
        </div>
    </div>
    </form>
</body>
</html>
