//选项卡添加
function TabsAdd(title, url, icon) {
    if ($('#tabs').tabs('exists', title)) {
        $('#tabs').tabs('select', title)
    }
    else {
        $('#tabs').tabs('add', {
            title: title,
            content: '<iframe src=\"' + url + '\" scrolling=\"auto\" frameborder=\"0\" width=\"100%\" height=\"100%\"></iframe>',
            closable: true,
            icon: icon
        });
    }
}

function NavMenuUrl(url, title) {
    //window.parent.frames["Center"].contentWindow.TabsAdd(title, url, null);
    top.frames["Center"].contentWindow.TabsAdd(title, url, null);
}
//中间页刷新
function RefreshCenter() {
    top.window.frames["Center"].contentWindow.Refresh();
}

function CloseTab() {
    var tab = top.frames["Center"].contentWindow.$('#tabs').tabs('getSelected');
    if (tab) {
        var index = top.frames["Center"].contentWindow.$('#tabs').tabs('getTabIndex', tab);
        top.frames["Center"].contentWindow.$('#tabs').tabs('close', index);
    } 
}

/// <summary>
/// 警告提示
/// </summary>
/// <param name="msg">显示消息</param>
/// <returns></returns>
function showWarningMsg(msg) {
    top.art.dialog({
        id: 'WarningID',
        title: '系统提示',
        content: msg,
        icon: 'warning',
        time: 10,
        background: '#000',
        opacity: 0.1,
        lock: true,
        okVal: '关闭',
        ok: true
    });
}

/// <summary>
/// 确认提示
/// </summary>
/// <param name="msg">显示消息</param>
/// <param name="callBack">回调函数</param>
/// <returns></returns>
function showConfirmMsg(msg, callBack) {
    top.art.dialog({
        id: 'ConfirmID',
        title: '系统提示',
        content: msg,
        icon: 'warning',
        background: '#000000',
        opacity: 0.1,
        lock: true,
        button: [{
            name: '确定',
            callback: function () {
                callBack(true);
            },
            focus: true
        }, {
            name: '取消',
            callback: function () {
                this.close();
                return false;
            }
        }]
    });
}

/// <summary>
/// 温馨提醒
/// </summary>
/// <param name="msg">显示消息</param>
/// <returns></returns>
function showFaceMsg(msg) {
    top.art.dialog({
        id: 'faceId',
        title: '温馨提醒',
        content: msg,
        icon: 'face-smile',
        time: 10,
        background: '#000',
        opacity: 0.1,
        lock: true,
        okVal: '关闭',
        ok: true
    });
}

/// <summary>
/// 弹出网页
/// </summary>
/// <param name="url">显示消息</param>
/// <param name="_id">回调函数</param>
/// <param name="_title">标题名称</param>
/// <param name="width">宽度 'auto'自动适应 最小308</param>
/// <param name="height">高度 'auto'自动适应 最小150</param>
/// <param name="left">左边缘</param>
/// <param name="top">顶部边缘</param>
/// <returns></returns>
function openDialog(url, _id, _title, _width, _height, left, top) {
    art.dialog.open(url, {
        id: _id,
        title: _title,
        width: _width,
        height: _height,
        left: left + '%',
        top: top + '%',
        background: '#000000',
        opacity: 0.1,
        lock: true,
        resize: false,
        close: function () { }
    }, false);
}

/// <summary>
/// 短暂提示
/// </summary>
/// <param name="msg">显示消息</param>
/// <param name="type">停留时间(ms)</param>
/// <param name="type">类型 4：成功，5：失败，3：警告</param>
/// <returns></returns>
function showTipsMsg(msg, time, type) {
    top.ZENG.msgbox.show(msg, type, time, 140);
}

/// <summary>
/// 窗口关闭
/// </summary>
function OpenClose() {
    art.dialog.close();
}


//获取Url参数
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}

function MainResize(Height) {
    resizeU()
    $(window).resize(resizeU);
    function resizeU() {
        var windowH = $(window).height();
        $(".MainBody").height(windowH - Height);
    }
}

function getAjax(url, parm, callBack) {
    $.ajax({
        type: 'post',
        dataType: "text",
        url: url,
        data: parm,
        cache: false,
        async: false,
        success: function (msg) {
            callBack(msg);
        }
    });
}


/// <summary>
/// 切换验证码
/// </summary>
function ToggleCode(obj, codeurl) {
    $("#txtCode").val("");
    $("#" + obj).attr("src", codeurl + "?time=" + Math.random());
}