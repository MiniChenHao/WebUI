<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuForm.aspx.cs" Inherits="AdminUI.BasePage.SysMenu.MenuForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        //全取系统图标
        function SelectOpenImg() {
            var url = "/BasePage/SysMenu/Icons_List.aspx?Size=32";
            top.openDialog(url, 'Icons_List', '系统图标 - 全取', 615, 400, 100, 100);
        }
        //全取图标
        function Get_Menu_Img(img) {
            $("#Img_Menu_Img").attr("src", '/Theme/Image/32/' + img);
            $("#MenuImgUrl").val(img);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="ManZone">
        <div class="ManTitle"></div>
        <div class="ManBody" style=" width:100%;">
            <table class="FormTable" cellspacing="0" cellpadding="3">
                <tbody>
                    <tr>
                        <th align="right">菜单名称:</th>
                        <td align="left">
                            <input type="text" />
                        </td>
                    </tr>
                    <tr>
                        <th align="right">菜单父级:</th>
                        <td align="left">
                            <input type="text" />
                        </td>
                    </tr>
                    <tr>
                        <th align="right">菜单图标:</th>
                        <td align="left">
                            <input id="MenuImgUrl" type="hidden" runat="server" />
                            <img id="Img_Menu_Img" src="/Theme/Image/illustration.png" runat="server" alt="" style="vertical-align: middle; padding-right: 10px;" />
                            <a href="javascript:void(0)" class="button Btn-Green" onclick="SelectOpenImg()">图标全取</a>
                        </td>
                    </tr>
                    <tr>
                        <th align="right">排序:</th>
                        <td align="left">
                            <input type="text" />
                        </td>
                    </tr>
                    <tr>
                        <th align="right">链接地址:</th>
                        <td align="left">
                            <input type="text" />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
