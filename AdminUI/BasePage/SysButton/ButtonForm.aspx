<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonForm.aspx.cs" Inherits="AdminUI.BasePage.SysButton.ButtonForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jQuery-Validation-Engine/css/validationEngine.jquery.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jQuery-Validation-Engine/js/jquery.validationEngine-zh_CN.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jQuery-Validation-Engine/js/jquery.validationEngine.js" type="text/javascript"></script>
    <script src="/Theme/JScript/artDialog/artDialog.source.js" type="text/javascript"></script>
    <script src="/Theme/JScript/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        //全取系统图标
        function SelectOpenImg() {
            var url = "/BasePage/SysMenu/Icons_List.aspx?Size=16";
            top.openDialog(url, 'Icons_List', '系统图标 - 全取', 615, 400, 100, 100);
        }
        //全取图标
        function Get_Img(img) {
            $("#Img_Button_Img").attr("src", '/Theme/Image/16/' + img);
            $("#ButtonImg").val(img);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle"></div>
        <div class="MainBody" style=" width:100%;">
            <table class="FormTable" cellspacing="0" cellpadding="3">
                <tbody>
                    <tr>
                        <th align="right">按钮名称:</th>
                        <td align="left">
                            <input type="text" runat="server" id="ButtonName" class="T_Input validate[required]" />
                        </td>
                    </tr>
                    <tr>
                        <th align="right">按钮图标:</th>
                        <td align="left">
                            <input id="ButtonImg" type="hidden" runat="server" />
                            <img id="Img_Button_Img" src="/Theme/Image/illustration.png" runat="server" alt="" style="vertical-align: middle; padding-right: 10px;" />
                            <a href="javascript:void(0)" class="button Btn-Green" onclick="SelectOpenImg()">图标全取</a>
                        </td>
                    </tr>
                    <tr>
                        <th align="right">排序:</th>
                        <td align="left">
                            <input type="text" runat="server" id="SortCode" class="T_Input validate[required, custom[PositiveInteger]]" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="MainFoot" style=" text-align: center; ">
            <asp:Button ID="Save" class="button Btn-Green" runat="server" Text="保 存" onclick="Save_Click" />
            <button class="button Btn-Green" onclick="OpenClose();">关 闭</button>
        </div>
    </div>
    </form>
</body>
</html>
