<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="AdminUI.Dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle">
            控制面板</div>
        <table id="GridTable" cellspacing="0" cellpadding="3">
            <thead>
                <tr class="Table-Header-Tr">
                    <td class="FirstTd" style="text-align: center; width: 30px;">序号</td>
                    <td class="OtherTd" style="width: 20px;"><input type="checkbox" /></td>
                    <td class="OtherTd">按钮名称</td>
                </tr>
            </thead>
            <tbody>
                <tr class="Table-Body-Tr">
                    <td class="FirstTd" style="text-align: center;">1</td>
                    <td class="OtherTd"><input type="checkbox" /></td>
                    <td class="OtherTd">asdfasdf</td>
                </tr>
                <tr class="Table-Body-Tr">
                    <td class="FirstTd" style="text-align: center;">2</td>
                    <td class="OtherTd"><input type="checkbox" /></td>
                    <td class="OtherTd">asdfasdf</td>
                </tr>
                <tr class="Table-Body-Tr">
                    <td class="FirstTd" style="text-align: center;">3</td>
                    <td class="OtherTd"><input type="checkbox" /></td>
                    <td class="OtherTd">asdfasdf</td>
                </tr>
            </tbody>
        </table>
        <a title="新增" onclick="ADD()" class="button Btn-Green">
            <span class="btn-icon icon-add"></span>新增 
        </a>
        <a title="新增" onclick="ADD()" class="button Btn-Green">
            <span class="btn-icon" style="background: url('/Theme/Image/16/add.png') no-repeat center center;"></span> 新增 
        </a>
    </div>
    </form>
</body>
</html>
