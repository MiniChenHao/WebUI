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
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle">资源管理
            <div style=" float:right; padding-right:2px; ">
                <a title="新增" onclick="ADD()" class="button Btn-Green">
                    <span class="btn-icon" style=" background: url('/Theme/Image/16/add.png') no-repeat center center; "></span>新增
                </a>
            </div>
        </div>
        <div class="MainBody" style=" width:100%;">
            <div id="DataLayout" class="easyui-layout">
	        	<div data-options="region:'west', split:true, collapsible:false" title="数据资源管理器" style=" width:20%; padding:10px; ">
	        		<p>width: 30%</p>
	        	</div>
	        	<div data-options="region:'center',iconCls:'icon-ok'" title="表">
	        	</div>
	        </div>
        </div>
    </div>
    </form>
</body>
</html>
