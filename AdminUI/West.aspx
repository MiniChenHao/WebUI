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
            //window.parent.frames["Center"].contentWindow.TabsAdd(title, url, null);
            top.frames["Center"].contentWindow.TabsAdd(title, url, null);
        }
    </script>
    <style type="text/css">
        *{ margin:0px; padding:0px;}
        body { font-family: 宋体,Geneva, Arial, Helvetica, sans-serif; font-size: 80%;}
        #accordion .menu_title{ height:22px; line-height:22px; }
        #accordion img{ margin:-2px 5px 0px 0px; vertical-align: middle; }
        #accordion .menu_body{ padding:10px; }
        #accordion .menu_body li { padding:5px 15px; border:solid 1px #FFFFFF; margin-bottom: 2px; cursor: pointer;}
        #accordion .menu_body .bodyHover{ background: #FFCC00; border: solid 1px #ada9aa; }
        #accordion .menu_body .bodyselected{ background: #FFCC00; border: solid 1px #cccccc;  }
        #accordion .menu_body li img { padding-right: 5px; }
    </style>
</head>
<body>
    <form id="form1" runat="server" style=" height:100%; width:100%;">
    <div id="accordion">
        <%=MenuHtml %>
    </div>
    </form>
</body>
</html>
