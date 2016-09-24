<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataResourcesWest.aspx.cs" Inherits="AdminUI.BasePage.SysData.DataResourcesWest" %>

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
            $('#DataList').tree({
                url: '/BasePage/SysData/GetDataResources.ashx?Type=TableNameList',
                animate: true,
                lines: true,
                onlyLeafCheck: true,
                onClick: function (node) {
                    alert(node.id);
                }
            });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ul id="DataList" class="easyui-tree"></ul>
    </div>
    </form>
</body>
</html>
