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


//警告提示
//msg: 显示消息
//callBack：函数
function showConfirmMsg(msg, callBack) {
    top.art.dialog({
        id: 'confirmId',
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