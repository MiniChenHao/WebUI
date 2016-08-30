<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuList.aspx.cs" Inherits="AdminUI.BasePage.SysMenu.MenuList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-easyui-1.4.5/jquery.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            MainResize(47);
            $("#TreeTable").treegrid({
                url: '/BasePage/SysMenu/GetMenuList.ashx?Type=MenuList',
                idField: 'MenuID',
                treeField: 'MenuName',
                rownumbers: true,
                frozenColumns: [[
		            { field: 'MenuName', title: '菜单名称', width: 300 }
                ]],
                columns: [[
		            { field: 'MenuImg', title: '图标', align: 'center' },
		            { field: 'SortCode', title: '排序', align: 'center' },
                    { field: 'MenuType', title: '类型', align: 'center' },
		            { field: 'NavigateUrl', title: '链接地址' }
                ]]
            });
        })

        function ADD() {
            var SelectNode = $('#TreeTable').treegrid('getSelected');
            var url = "/BasePage/SysMenu/MenuForm.aspx?PID=" + (SelectNode == null ? "" : escape(SelectNode.MenuID));
            top.openDialog(url, "MenuForm", '导航菜单信息 - 添加', 600, 400, 50, 50);
        }

        function EDIT() {
            var SelectNode = $('#TreeTable').treegrid('getSelected');
            if (SelectNode == undefined || SelectNode == null) {
                showWarningMsg("未选中任何一行");
            }
            else {
                var url = "/BasePage/SysMenu/MenuForm.aspx?MID=" + escape(SelectNode.MenuID);
                top.openDialog(url, "MenuForm", '导航菜单信息 - 编辑', 600, 400, 50, 50);
            }
        }

        function DELETE() {
            top.showConfirmMsg("确认要删除吗？", function () {
                showTipsMsg("删除成功！", 2000, 4);
            })
        }

        function ALLOTBUTTON() {
            var SelectNode = $('#TreeTable').treegrid('getSelected');
            if (SelectNode == undefined || SelectNode == null) {
                showWarningMsg("未选中任何一行");
            }
            else {
                NavMenuUrl("/BasePage/SysMenu/AllotButtonForm.aspx?MID=" + escape(SelectNode.MenuID), "导航菜单信息 - 分配按钮");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle">菜单导航
            <div style=" float:right; padding-right:2px; ">
                <a title="新增" onclick="ADD()" class="button Btn-Green">
                    <span class="btn-icon" style=" background: url('/Theme/Image/16/add.png') no-repeat center center; "></span>新增
                </a>
                <a title="编辑" onclick="EDIT()" class="button Btn-Green">
                    <span class="btn-icon" style=" background: url('/Theme/Image/16/edit.png') no-repeat center center; "></span>编辑
                </a>
                <a title="删除" onclick="DELETE()" class="button Btn-Green">
                    <span class="btn-icon" style=" background: url('/Theme/Image/16/delete.png') no-repeat center center; "></span>删除
                </a>
                <a title="按钮分配" onclick="ALLOTBUTTON()" class="button Btn-Green">
                    <span class="btn-icon" style=" background: url('/Theme/Image/16/bricks.png') no-repeat center center; "></span>按钮分配
                </a>
            </div>
        </div>
        <div class="MainBody" style=" width:100%;">
            <table id="TreeTable" class="easyui-treegrid" fit="true"></table>
        </div>
    </div>
    </form>
</body>
</html>
