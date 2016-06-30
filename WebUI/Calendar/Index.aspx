<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebUI.Calendar.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/Threme/JScript/FullCalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
    <link href="/Threme/JScript/FullCalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print' />
    <link href="/Threme/JScript/fancybox/css/fancybox.css" rel="stylesheet" type="text/css" />
    <script src="/Threme/JScript/jquery-1.12.3.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/FullCalendar/lib/moment.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/FullCalendar/lib/jquery-ui.custom.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/FullCalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="/Threme/JScript/FullCalendar/lang-all.js" type="text/javascript"></script>
    <script src="/Threme/JScript/fancybox/js/jquery.fancybox-1.3.1.pack.js" type="text/javascript"></script>
    <script src="/Threme/JScript/FunctionJS.js" type="text/javascript"></script>
    <script type="text/javascript">
        var myDate = new Date();
        var DateNow = myDate.Format("yyyy-MM-dd");
        var Ratio = 1.5;
        var currentLangCode = 'zh-cn';
        var DataSources = eval("[{ title: 'All Day Event', start: '2015-12-01' }, { title: 'Long Event', start: '2015-12-07', end: '2015-12-10' }, { id: 999, title: 'Repeating Event', start: '2015-12-09T16:00:00' }, { id: 999, title: 'Repeating Event', start: '2015-12-16T16:00:00' }, { title: 'Conference', start: '2015-12-11', end: '2015-12-13' }, { title: 'Meeting', start: '2015-12-12T10:30:00', end: '2015-12-12T12:30:00' }, { title: 'Lunch', start: '2015-12-12T12:00:00' }, { title: 'Meeting', start: '2015-12-12T14:30:00' }, { title: 'Happy Hour', start: '2015-12-12T17:30:00' }, { title: 'Dinner', start: '2015-12-12T20:00:00' }, { title: 'Birthday Party', start: '2015-12-13T07:00:00' }, { title: 'Click for Baidu', start: '2015-12-28'}]");
        $(document).ready(function () {
            CalendarLoad();
            $('#external-events .fc-event').each(function () {
                $(this).data('event', {
                    title: $.trim($(this).text()),
                    stick: true
                });
                $(this).draggable({
                    zIndex: 999,
                    revert: true,
                    revertDuration: 0
                });
            });
        });

        function CalendarLoad() {
             $('#calendar').fullCalendar({
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
                defaultDate: DateNow,
                lang: currentLangCode,
                aspectRatio: Ratio,
                editable: true,
                eventLimit: true,
                selectable: true,
                selectHelper: true,
                droppable: true,//允许拖拽
			    drop: function() {
			    	if ($('#drop-remove').is(':checked')) {
			    		$(this).remove();
			    	}
			    },
                select: function (start, end) {
                    $.fancybox({
                        'type': 'ajax',
                        'href': 'CalendarForm.aspx?Action=ADD&startDate=' + start + '&endDate=' + end
                    });
                },
                eventClick: function (calEvent, jsEvent, view) {
                    $.fancybox({
                        'type': 'ajax',
                        'href': 'CalendarForm.aspx?Action=EDIT&eventID=' + calEvent.id
                    });
                },
                events: DataSources
            });
        }

    </script>
    <style type="text/css">
    	body { margin-top: 40px; text-align: center; font-size: 14px; font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif; } 
    	#wrap { width: 1100px; margin: 0 auto; } 
    	#external-events { float: left; width: 150px; padding: 0 10px; border: 1px solid #ccc; background: #eee; text-align: left; } 
    	#external-events h4 { font-size: 16px; margin-top: 0; padding-top: 1em; } 
    	#external-events .fc-event { margin: 10px 0; cursor: pointer; } 
    	#external-events p { margin: 1.5em 0; font-size: 11px; color: #666; } 
    	#external-events p input { margin: 0; vertical-align: middle; } 
    	#calendar { float: right; width: 900px; }
    	.fc-ltr .fc-basic-view .fc-day-number{ text-align: left; padding: 0 2px; position:relative} 
        .fc-ltr .fc-basic-view .fc-day-number span.solarday{ float:right;}     
        .fc-ltr .fc-basic-view .fc-day-number span.holiday{ position:absolute; left:40%} 
    </style>
</head>
<body>
    <div id='wrap'>
		<div id='external-events'>
			<h4>Draggable Events</h4>
			<div class='fc-event'>My Event 1</div>
			<div class='fc-event'>My Event 2</div>
			<div class='fc-event'>My Event 3</div>
			<div class='fc-event'>My Event 4</div>
			<div class='fc-event'>My Event 5</div>
			<p>
				<input type='checkbox' id='drop-remove' />
				<label for='drop-remove'>remove after drop</label>
			</p>
		</div>
		<div id='calendar'></div>
		<div style='clear:both'></div>

	</div>
</body>
</html>
