<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllowAuthorityForm.aspx.cs" Inherits="AdminUI.BasePage.SysRole.AllowAuthorityForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/TreeTable/css/jquery.treeTable.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script src="/Theme/JScript/TreeTable/jquery.treeTable.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            TableResize();
            $("#GridTable").treeTable({
                initialState: "expanded" //collapsed 收缩 expanded展开的
            });
        });

        function TableResize() {
            resizeU()
            $(window).resize(resizeU);
            function resizeU() {
                var windowH = $(window).height();
                $(".MainBody").height(windowH - 100);
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle">所属角色【超级管理员】 &nbsp;&nbsp;<span style="color: Red;">注：分配权限 - 该功能谨慎使用！</span></div>
        <div class="MainBody" style=" width:100%;">
            <table id="GridTable" cellspacing="0" cellpadding="3">
                <thead>
                    <tr class="Table-Header-Tr">
                        <td class="FirstTd">URL菜单权限</td>
                        <td class="OtherTd">图标</td>
                        <td class="OtherTd" style=" width: 20px;">
                            <input type="checkbox" />
                        </td>
                        <td class="OtherTd">操作按钮权限</td>
                    </tr>
                </thead>
                <tbody>
                    <%=StrTreeMenu %>
                </tbody>
            </table>
        </div>
        <div class="MainFoot" style=" text-align: center; ">
            <asp:Button ID="Save" class="button Btn-Green" runat="server" Text="保 存" onclick="Save_Click" />
            <button class="button Btn-Green" onclick="CloseTab();">关 闭</button>
        </div>
    </div>
    </form>
</body>
</html>
