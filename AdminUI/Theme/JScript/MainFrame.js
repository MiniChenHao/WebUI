$(function () {
    writeDateInfo($("#DateTime"));
    $("#Greetings").html(BeautifulGreetings());
    $(".NorthHeader .Menu div").click(function () {
        $(".NorthHeader .Menu div").removeClass("Select");
        $(".NorthHeader .Menu div").addClass("Remove");
        $(this).removeClass("Remove");
        $(this).addClass("Select");
    })
    $(".NorthHeader .Menu .Select").click();
})

//当前日期
function writeDateInfo(item) {
    var day = "";
    var month = "";
    var ampm = "";
    var ampmhour = "";
    var myweekday = "";
    var year = "";
    mydate = new Date();
    myweekday = mydate.getDay();
    mymonth = mydate.getMonth() + 1;
    myday = mydate.getDate();
    myyear = mydate.getYear();
    year = (myyear > 200) ? myyear : 1900 + myyear;
    if (myweekday == 0)
        weekday = " 星期日";
    else if (myweekday == 1)
        weekday = " 星期一";
    else if (myweekday == 2)
        weekday = " 星期二";
    else if (myweekday == 3)
        weekday = " 星期三";
    else if (myweekday == 4)
        weekday = " 星期四";
    else if (myweekday == 5)
        weekday = " 星期五";
    else if (myweekday == 6)
        weekday = " 星期六";
    $(item).text(year + "年" + mymonth + "月" + myday + "日 " + weekday);
}

//登录问候
function BeautifulGreetings() {
    var now = new Date();
    var hour = now.getHours();
    if (hour < 3) { return ("夜深了,早点休息吧！") }
    else if (hour < 9) { return ("早上好！") }
    else if (hour < 12) { return ("上午好！") }
    else if (hour < 14) { return ("中午好！") }
    else if (hour < 18) { return ("下午好！") }
    else if (hour < 23) { return ("晚上好！") }
    else { return ("夜深了,早点休息吧！") }
}


//安全登出
function LogOut() {
    top.showConfirmMsg('确定要安全退出吗？', function (r) {
        if (r) {
            var parm = 'Action=LogOut';
            getAjax('/AJAX/Login.ashx', parm, function (rs) {
                window.location.href = '/Index.aspx';
            });
        }
    });
}

function LoadMenu(ParentID) {
    $("#West").attr("src", "West.aspx?PID=" + ParentID);
}