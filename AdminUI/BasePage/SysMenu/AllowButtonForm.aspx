<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllowButtonForm.aspx.cs" Inherits="AdminUI.BasePage.SysMenu.AllowButtonForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            PanelResize();
        })

        function PanelResize() {
            resizeU()
            $(window).resize(resizeU);
            function resizeU() {
                var windowH = $(window).height();
                $(".MainBody").height(windowH - 100);
                $(".Panel").height(windowH - 100);
                $(".PanelBody").height(windowH - 127);
            }
        }

        function SelectedButton(e) {
            $('.ShortcutIcons').removeClass("selected");
            $(e).addClass("selected"); //添加选中样式
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle">导航菜单信息 - 分配按钮</div>
        <div class="MainBody" style=" width:100%;">
            <div class="Panel P-Left">
                <div class="PanelTitle">
                    所有按钮;<span style="color: Blue;">双击添加</span>
                </div>
                <div class="PanelBody">
                    <asp:Repeater ID="AllButtonList" runat="server" >
                        <ItemTemplate>
                            <div id='<%# Eval("ButtonID") %>'  onclick='SelectedButton(this)' title='<%# Eval("ButtonName") %>' class="ShortcutIcons">
                                <img src='<%# "/Theme/Image/16/" + Eval("ButtonImg").ToString() %>'' alt='' /><br /><%# Eval("ButtonName") %>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="Panel P-Right" >
                <div class="PanelTitle">
                    已选按钮;<span style="color: Red;">双击移除</span>
                </div>
                <div class="PanelBody">
                    <asp:Repeater ID="SelectButtonList" runat="server" >
                        <ItemTemplate>
                            <div onclick='SelectedButton(this)' ondblclick="RemoveButton('<%# Eval("MenuID") %>')" title='<%# Eval("MenuName") %>' class="ShortcutIcons">
                                <img src='<%# "/Theme/Image/16/" + Eval("MenuImg").ToString() %>' alt="" /><br /><%# Eval("MenuName") %>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        <div class="MainFoot" style=" text-align: center; ">
            <asp:Button ID="Save" class="button Btn-Green" runat="server" Text="保 存" onclick="Save_Click" />
            <button class="button Btn-Green" onclick="CloseTab();">关 闭</button>
        </div>
    </div>
    </form>
</body>
</html>
