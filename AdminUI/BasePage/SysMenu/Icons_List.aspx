<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Icons_List.aspx.cs" Inherits="AdminUI.BasePage.SysMenu.Icons_List" %>

<%@ Register src="/UserControl/PageControl.ascx" tagname="PageControl" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>图标列表</title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/artDialog/jquery.artDialog.source.js" type="text/javascript"></script>
    <script src="/Theme/JScript/artDialog/iframeTools.source.js" type="text/javascript"></script>
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            divresize();
            $(".divicons").click(function () {
                if ($("#hidden_Size").val() == "32") {
                    top.MenuForm.Get_Img($(this).attr('title'));
                }
                else {
                    top.ButtonForm.Get_Img($(this).attr('title'));
                }
            }).dblclick(function () {
                OpenClose();
            });

        })
        /**自应表格高度**/
        function divresize() {
            resizeU();
            $(window).resize(resizeU);
            function resizeU() {
                $(".div-body").height($(window).height() - 59);
            }
        }
    </script>
    <style type="text/css">
        .divicons
        {
            float: left;
            border: solid 1px #ccc;
            margin: 5px;
            padding: 5px;
            text-align: center;
            cursor: pointer;
        }
        .divicons:hover
        {
            color: #FFF;
            border: solid 1px #3399dd;
            background: #2288cc;
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#33bbee', endColorstr='#2288cc');
            background: linear-gradient(top, #33bbee, #2288cc);
            background: -moz-linear-gradient(top, #33bbee, #2288cc);
            background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#33bbee), to(#2288cc));
            text-shadow: -1px -1px 1px #1c6a9e;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <input id="hidden_Size" type="hidden" runat="server" />
    <div class="btnbartitle">
        <div>
            系统图标全取
        </div>
    </div>
    <div class="div-body">
        <%=strImg.ToString() %>
    </div>
    <uc1:PageControl ID="PageControl1" runat="server" />
    </form>
</body>
</html>
