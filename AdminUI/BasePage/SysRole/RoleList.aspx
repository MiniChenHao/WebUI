<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RoleList.aspx.cs" Inherits="AdminUI.BasePage.SysRole.RoleList" %>

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
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            MainResize(47);
            $("#GridTable").datagrid({
                url: '/BasePage/SysRole/GetRoleList.ashx',
                rownumbers: true,
                singleSelect: true,
                frozenColumns: [[
                    { field: 'ck', checkbox: true },
                    { field: 'RoleName', title: '角色名称', align: 'center' }
                ]],
                columns: [[
                    { field: 'RoleRemark', title: '角色描述', align: 'center' },
                    { field: 'AllowEdit', title: '是否能编辑', align: 'center' },
                    { field: 'AllowDelete', title: '是否能删除', align: 'center' },
                    { field: 'SortCode', title: '排序', align: 'center' },
                    { field: 'CreateDate', title: '创建时间', align: 'center' },
                    { field: 'ModifyDate', title: '最后编辑时间', align: 'center' }
                ]]
            })
        })

        function ALLOTBUTTON() {
            var SelectNode = $('#GridTable').treegrid('getSelected');
            if (SelectNode == undefined || SelectNode == null) {
                showWarningMsg("未选中任何一行");
            }
            else {
                NavMenuUrl("/BasePage/SysRole/AllowAuthorityForm.aspx?RID=" + escape(SelectNode.RoleID), "角色信息 - 分配权限");
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle">角色列表
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
                <a title="分配权限" onclick="ALLOTBUTTON()" class="button Btn-Green">
                    <span class="btn-icon" style=" background: url('/Theme/Image/16/chart_organisation_add.png') no-repeat center center; "></span>分配权限
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
