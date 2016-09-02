<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllowAuthorityForm.aspx.cs" Inherits="AdminUI.BasePage.SysRole.AllowAuthorityForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle">所属角色【超级管理员】 &nbsp;&nbsp;<span style="color: Red;">注：分配权限 - 该功能谨慎使用！</span></div>
        <div class="MainBody" style=" width:100%;">
        </div>
        <div class="MainFoot" style=" text-align: center; ">
            <asp:Button ID="Save" class="button Btn-Green" runat="server" Text="保 存" onclick="Save_Click" />
            <button class="button Btn-Green" onclick="CloseTab();">关 闭</button>
        </div>
    </div>
    </form>
</body>
</html>
