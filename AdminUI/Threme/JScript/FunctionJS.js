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


//获取Url参数
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}