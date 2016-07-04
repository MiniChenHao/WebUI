<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Center.aspx.cs" Inherits="AdminUI.Center" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Threme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="/Threme/JScript/jquery-easyui-1.4.5/jquery.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
        })

        function Refresh() {
            var curTabWin = null;
            var currTab = $('#tabs').tabs('getSelected'); //获得当前tab
            if (currTab && currTab.find('iframe').length > 0) {
                curTabWin = currTab.find('iframe')[0];
                var url = $(curTabWin).attr('src');
                $('#tabs').tabs('update', {
                    tab: currTab,
                    options: {
                        content: '<iframe src=\"' + url + '\" scrolling=\"auto\" frameborder=\"0\" width=\"100%\" height=\"100%\"></iframe>'
                    }
                });
            }
        }
    </script>
    <style type="text/css">
        *{ margin:0px; padding:0px;}
        body { font-family: 宋体,Geneva, Arial, Helvetica, sans-serif; font-size: 80%;}
        .tabs-header { background: #ddd; }
        .tabs-header, .tabs-scroller-left, .tabs-scroller-right, .tabs-tool, .tabs, .tabs-panels, .tabs li a.tabs-inner, .tabs li.tabs-selected a.tabs-inner, .tabs-header-bottom .tabs li.tabs-selected a.tabs-inner, .tabs-header-left .tabs li.tabs-selected a.tabs-inner, .tabs-header-right .tabs li.tabs-selected a.tabs-inner { border-color: #BBB;}
        .tabs li.tabs-selected a.tabs-inner { border-bottom: 1px solid #ffffff; }
        .tabs li.tabs-selected a.tabs-inner { color: #3F3F3F; font-weight: bold; background: #fff; outline: none; }
        .tabs li a.tabs-inner { background: linear-gradient(to bottom,#DDD 0,#FFF 100%);}
        .tabs li a.tabs-inner:hover { background: #ffffff; }
        .panel-body { padding: 5px; }
    </style>
</head>
<body>
    <div id="tabs" class="easyui-tabs" fit="true" style=" width:100%;">
	    <div title="控制面板" style="padding:5px">
	    	<iframe src="/Dashboard.aspx" scrolling="auto" frameborder="0" width="100%" height="100%"></iframe>
	    </div>
	</div>
</body>
</html>
