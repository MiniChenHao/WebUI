<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="West.aspx.cs" Inherits="AdminUI.West" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Threme/JScript/JQuertUI/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="/Threme/JScript/JQuertUI/external/jquery/jquery.js" type="text/javascript"></script>
    <script src="/Threme/JScript/JQuertUI/jquery-ui.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(this).height($(window).height());
            $("#accordion").accordion({
                icons: null,
                active: 0,
                heightStyle: "fill"
            });
            HeightResize($("#accordion"));

            $("#accordion .menu_body li").click(function () {
                $('#accordion .menu_body li').removeClass("bodyselected");
                $(this).addClass("bodyselected");
            }).hover(function () {
                $(this).addClass("bodyHover");
            }, function () {
                $(this).removeClass("bodyHover");
            });
        })
        
        function HeightResize(Control) {
            ResizeU();
            $(window).resize(ResizeU);
            function ResizeU() {
                var BodyH = $(window).height();
                $(Control).height(BodyH - 2);
                $(Control).accordion( "refresh" );
            }
        }

        function NavMenuUrl(url, title) {
            window.parent.frames["Center"].contentWindow.TabsAdd(title, url, null);
        }
    </script>
    <style type="text/css">
        *{ margin:0px; padding:0px;}
        body { font-family: 宋体,Geneva, Arial, Helvetica, sans-serif; font-size: 80%;}
        #accordion .menu_title{ height:22px; line-height:22px; }
        #accordion img{ margin:-2px 5px 0px 0px; vertical-align: middle; }
        #accordion .menu_body{ padding:10px; }
        #accordion .menu_body li { padding:5px 15px; border:solid 1px #FFFFFF; margin-bottom: 2px; cursor: pointer;}
        #accordion .menu_body .bodyHover{ background1: #0099FF; background: #FFCC00; border: solid 1px #ada9aa; }
        #accordion .menu_body .bodyselected{ background1: #0099FF; background: #FFCC00; border: solid 1px #cccccc;  }
        #accordion .menu_body li img { padding-right: 5px; }
    </style>
</head>
<body>
    <form id="form1" runat="server" style=" height:100%; width:100%;">
    <div id="accordion">
        <ul class="menu_title"><img src="/Threme/Image/32/189.png" width='16' height='16' />系统管理</ul>
        <ul class="menu_body">
            <li onclick="NavMenuUrl('/BasePage/SysMenu/MenuList.aspx','菜单管理')"><img src="/Threme/Image/32/sitemap.png" width='22' height='22' />菜单管理</li>
            <li onclick="NavMenuUrl('https://www.baidu.com','操作按钮')"><img src="/Threme/Image/32/567.png" width='22' height='22' />操作按钮</li>
            <li onclick="NavMenuUrl('https://www.baidu.com','用户管理')"><img src="/Threme/Image/32/userregedit.png" width='22' height='22' />用户管理</li>
            <li onclick="NavMenuUrl('https://www.baidu.com','部门管理')"><img src="/Threme/Image/32/20130508035912738_easyicon_net_32.png" width='22' height='22' />部门管理</li>
            <li onclick="NavMenuUrl('https://www.baidu.com','角色管理')"><img src="/Threme/Image/32/20130508035646751_easyicon_net_32.png" width='22' height='22' />角色管理</li>
            <li onclick="NavMenuUrl('https://www.baidu.com','员工管理')"><img src="/Threme/Image/32/20130508034816125_easyicon_net_32.png" width='22' height='22' />员工管理</li>
        </ul>
        <ul class="menu_title"><img src="/Threme/Image/32/189.png" width='16' height='16' />系统管理</ul>
        <ul class="menu_body">
            <li onclick="NavMenuUrl('https://www.baidu.com','菜单管理')"><img src="/Threme/Image/32/sitemap.png" width='22' height='22' />菜单管理</li>
        </ul>
        <ul class="menu_title"><img src="/Threme/Image/32/189.png" width='16' height='16' />系统管理</ul>
        <ul class="menu_body">
            <li onclick="NavMenuUrl('https://www.baidu.com','菜单管理')"><img src="/Threme/Image/32/sitemap.png" width='22' height='22' />菜单管理</li>
        </ul>
    </div>
    </form>
</body>
</html>
