﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AdminUI.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Threme/JScript/JQuertUI/jquery-ui.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/JScript/JQuertUI/layout-latest.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/CSS/Center.css" rel="stylesheet" type="text/css" />
    <script src="/Threme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/JQuertUI/external/jquery/jquery.js" type="text/javascript"></script>
    <script src="/Threme/JScript/JQuertUI/jquery-ui.js" type="text/javascript"></script>
    <script src="/Threme/JScript/JQuertUI/jquery.layout-latest.js" type="text/javascript"></script>
    <script src="/Threme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script src="/Threme/JScript/Center.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('body').layout({
                applyDefaultStyles: false,
                maskIframesOnResize: "#Center",
                scrollToBookmarkOnLoad: false, //页加载时滚动到标签
                togglerTip_open: "关闭",
                togglerTip_closed: "打开",
                north: {
                    size: 98,
                    spacing_open: 3,
                    closable: false,
                    resizable: false
                },
                west: {
                    size: 200,
                    spacing_open: 3,
                    closable: true,
                    resizable: false
                },
                south: {
                    size: 27,
                    spacing_open: 3,
                    initClosed: true, //初始时，pane关闭
                    closable: true,
                    resizable: true
                },
                east: {
                    size: 200,
                    spacing_open: 3,
                    initClosed: true, //初始时，pane关闭
                    closable: true,
                    resizable: true
                }
            });
        });
    </script>
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="ui-layout-center">
        <iframe id="Center" src="Center.aspx" scrolling="auto" frameborder="0" width="100%" height="100%"></iframe>
    </div>  
    <div class="ui-layout-north">
        <div class="NorthHeader">
            <div class="Logo">通用权限管理系统</div>
            <div class="Menu">
                <table cellpadding="0" cellspacing="0" style=" height: 60px; padding: 0px;">
                    <tbody>
                        <tr valign="bottom">
                            <td>
                                <div class="Select">系统管理</div>
                                <div class="Remove">数据库管理</div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="NorthFooter">
            <div class="Time">
                <img src="/Threme/Image/clock_32.png" alt="" height="20" width="20" />
                <span id="DateTime"></span>
            </div>
            <div class="News">
                <div id="LoginUser">
                    <img src="Threme/Image/sun_2.png" alt="" width="20" height="20" alt="" />
                    <label id="Greetings"></label>
                    <label id="UserName" runat="server">谌昊</label>
                    欢迎登录系统！
                </div>
                <div id="Logout">
                    <img src="/Threme/Image/refresh.png" width="20" height="20" title="刷新" alt="刷新" onclick="RefreshCenter();" />
                    <img src="/Threme/Image/button-white-stop.png" width="20" height="20" title="安全退出" alt="安全退出" onclick=" alert('您确定要退出吗？')" />
                </div>
            </div>
        </div>
    </div>  
    <div class="ui-layout-south">South</div>  
    <div class="ui-layout-east">East</div>  
    <div class="ui-layout-west">
        <iframe id="West" src="West.aspx" scrolling="auto" frameborder="0" width="100%" height="100%"></iframe>
    </div> 
    </form>
</body>
</html>
