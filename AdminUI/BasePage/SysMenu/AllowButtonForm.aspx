<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllowButtonForm.aspx.cs" Inherits="AdminUI.BasePage.SysMenu.AllowButtonForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="/Theme/CSS/Style.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/JScript/jquery-easyui-1.4.5/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="/Theme/CSS/EasyUIStyle.css" rel="stylesheet" type="text/css" />
    <script src="/Theme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="/Theme/JScript/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
    <script src="/Theme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            MainResize(100);
            $("#SelectButton").layout({
                fit: true
            });
            $("#AllButtonList .ShortcutIcons").dblclick(function () {
                var ExistsValidation = true;
                var SelectButtonName = $(this).attr('title');
                $("#SelectButtonList .ShortcutIcons").each(function (i, n) {
                    if ($(n).attr('title') == SelectButtonName) {
                        ExistsValidation = false;
                        return false;
                    }
                })
                if (ExistsValidation == true) {
                    $("#SelectButtonList").append("<div onclick='SelectedButton(this)' ondblclick='RemoveButton(" + $(this).attr('id') + ")' title='" + $(this).attr('title') + "' class='ShortcutIcons'>" + $(this).html() + "</div>");
                }
                else {
                    showWarningMsg("【" + SelectButtonName + "】按钮已经存在！");
                }
            })
        })

        function SelectedButton(e) {
            $('.ShortcutIcons').removeClass("selected");
            $(e).addClass("selected"); //添加选中样式
        }

        function RemoveButton(e) {
            alert(e);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="MainZone">
        <div class="MainTitle">导航菜单信息 - 分配按钮</div>
        <div class="MainBody" style=" width:100%;">
            <div id="SelectButton" class="easyui-layout">
                <div id="AllButtonList" data-options="region:'west', split:true, collapsible:false, minWidth:200" title="所有按钮" style=" width:50%; ">
	                <asp:Repeater ID="RpAllButtonList" runat="server" >
                        <ItemTemplate>
                            <div id='<%# Eval("ButtonID") %>'  onclick='SelectedButton(this)' title='<%# Eval("ButtonName") %>' class="ShortcutIcons">
                                <img src='<%# "/Theme/Image/16/" + Eval("ButtonImg").ToString() %>'' alt='' /><br /><%# Eval("ButtonName") %>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
	            </div>
	            <div id="SelectButtonList" data-options="region:'center'" title="已选按钮">
	                <asp:Repeater ID="RpSelectButtonList" runat="server" >
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
