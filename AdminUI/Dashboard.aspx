<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="AdminUI.Dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="/Threme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <script src="/Threme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="ManZone">
        <div class="ManTitle">控制面板</div>
        <table id="GrayTable" cellspacing="1" cellpadding="3">
            <thead>
                <tr>
                    <td class="GrayTd">asdfasdf</td>
                    <td class="GrayTd">asdfasdf</td>
                    <td class="GrayTd">asdfasdf</td>
                </tr>
            </thead>
            <tbody>
                <tr class="trHover">
                    <td>asdfasdf</td>
                    <td>adsfadsf</td>
                    <td>asdfasdf</td>
                </tr>
                <tr class="trHover">
                    <td>asdfasdf</td>
                    <td>asdfasdf</td>
                    <td>asdfasdf</td>
                </tr>
                <tr class="trHover">
                    <td>asdfasdf</td>
                    <td>asdfasdf</td>
                    <td>asdfasdf</td>
                </tr>
            </tbody>
        </table>

        <a title="新增" onclick="ADD()" class="button Btn-Green">
            <span class="btn-icon icon-add"></span>新增
        </a>
        
        <a title="新增" onclick="ADD()" class="button Btn-Green">
            <span class="btn-icon" style=" background: url('/Threme/Image/16/add.png') no-repeat center center; "></span>新增
        </a>
    </div>
    </form>
</body>
</html>