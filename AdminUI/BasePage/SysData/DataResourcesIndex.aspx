<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataResourcesIndex.aspx.cs" Inherits="AdminUI.BasePage.SysData.DataResourcesIndex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/CSS/EasyUIStyle.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            MainResize(47);
            $("#DataLayout").layout({
                fit: true,
                collapsible: false
            });
        })
    </script>
</head>
<body id="DataLayout" class="easyui-layout">
	<div data-options="region:'west', split:true, collapsible:false, minWidth:200" title="数据资源管理器" style=" width:20%; ">
	    <iframe id="DataWest" name="DataWest" src="DataResourceManager.aspx" scrolling="auto" frameborder="0" width="100%" height="100%"></iframe>
	</div>
	<div data-options="region:'center',iconCls:'icon-ok'" title="表">
	    <iframe id="DataCenter" name="DataCenter" src="TableStructure.aspx" scrolling="auto" frameborder="0" width="100%" height="100%"></iframe>
	</div>
</body>
</html>
