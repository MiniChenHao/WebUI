﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="AdminUI.Dashboard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="/Threme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <style type="text/css">
        body { font-family: 宋体,Geneva, Arial, Helvetica, sans-serif; font-size: 14px; padding:0px; margin:0px; }
        .ManZone { width: 99%; background-color: #FFFFFF; padding: 0px; overflow: auto; margin: 0px; }
        .ManZone .ManTitle { width: 100%; height: 30px; line-height: 30px; font-weight: bold; font-size: 14px; border-bottom: 1px dotted #D6E9F7; margin-bottom: 10px; color: #009AD9; }
        #GrayTable { background-color: #BBBBBB; width:100%; }
        #GrayTable tr { background-color: #FFFFFF; }
        #GrayTable .GrayTd{ background-color: #DDDDDD; color: #555555; font-weight: bold; }
        #GrayTable .WhiteTd{ background-color: #FFFFFF; color: #555555; font-weight: bold; }
        #GrayTable .trHover:Hover{ background-color: #FFCC00; }
    </style>
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
    </div>
    </form>
</body>
</html>