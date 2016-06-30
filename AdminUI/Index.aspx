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
    <script src="/Threme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('body').layout({
                applyDefaultStyles: false,
                maskIframesOnResize: "#Center",
                scrollToBookmarkOnLoad: false, //页加载时滚动到标签
                north: {
                    size: 95,
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
            writeDateInfo($("#DateTime"));
        });
    </script>
    <style type="text/css">
        .NorthHeader { height: 60px; border-bottom: 2px solid #003EFF; background-color: #DDDDDD; }
        .NorthHeader .Logo { float: left; margin-left: 20px; height: 60px; width: 270px; line-height: 60px; font-size: 1.5em; font-family: 宋体,Geneva, Arial, Helvetica, sans-serif;}
        .NorthHeader .Menu { float: right; margin-right: 2px; height: 60px; }
        .NorthHeader .Menu div { border: 1px solid #000000; border-top-left-radius: 5px; border-top-right-radius: 5px; width: 100px; line-height: 32px; text-align: center; height: 32px; margin-left: 2px; float: left; font-size: 11pt; font-weight: bold; vertical-align: bottom;}
        .NorthHeader .Menu .Select { background-color: #FFFFFF; color:#000000; }
        .NorthHeader .Menu .Remove { background-color: #007fff; color:#FFFFFF; }
        .NorthButton { height: 23px; background-color: #DDDDDD; }
        .NorthButton img { vertical-align: middle; padding-bottom: 1px; }
        .NorthButton .Time { width: 195px; height: 100%; padding-left: 20px; float: left; color: #222; font-weight: bold; line-height:22px; }
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
        <div class="NorthButton">
            <div class="Time">
                <img src="/Threme/Image/clock_32.png" alt="" height="20" width="20" />
                <span id="DateTime"></span>
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
