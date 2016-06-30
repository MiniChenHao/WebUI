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