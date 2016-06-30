<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AdminUI.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Threme/JScript/JQuertUI/jquery-ui.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/JScript/JQuertUI/layout-latest.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/CSS/Index.css" rel="stylesheet" type="text/css" />
    <script src="/Threme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/JQuertUI/external/jquery/jquery.js" type="text/javascript"></script>
    <script src="/Threme/JScript/JQuertUI/jquery-ui.js" type="text/javascript"></script>
    <script src="/Threme/JScript/JQuertUI/jquery.layout-latest.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('body').layout({
                applyDefaultStyles: false,
                maskIframesOnResize: "#Center",
                scrollToBookmarkOnLoad: false, //页加载时滚动到标签
                north: {
                    size: 60,
                    spacing_open: 3,
                    closable: false,
                    resizable: false
                },
                west: {
                    size: 200,
                    spacing_open: 3,
                    closable: false,
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
</head>
<body>
    <form id="form1" runat="server">
    <div class="ui-layout-center">
        <iframe id="Center" src="Center.aspx" scrolling="auto" frameborder="0" width="100%" height="100%"></iframe>
    </div>  
    <div class="ui-layout-north">
        <h1>后端数据管理系统</h1>
    </div>  
    <div class="ui-layout-south">South</div>  
    <div class="ui-layout-east">East</div>  
    <div class="ui-layout-west">
        <iframe id="West" src="West.aspx" scrolling="auto" frameborder="0" width="100%" height="100%"></iframe>
    </div> 
    </form>
</body>
</html>
