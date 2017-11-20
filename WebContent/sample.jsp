<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.6.0/fullcalendar.css' />

<script src='http://code.jquery.com/jquery-1.11.3.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.1/moment.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.6.0/fullcalendar.min.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<script>
		$(document)
				.ready(
						function() {
							// page is ready
							$('#calendar')
									.fullCalendar(
											{
												// calendar properties
												events : [
														{
															title : 'event1',
															start : '2017-11-16',
															allDay : false
														},
														{
															title : 'event2',
															start : '2017-11-15',
															allDay : false
														},
														{
															title : 'event3',
															start : '2017-11-19T12:30:00',
															end : '2017-11-19T13:30:00',
															allDay : false
														// will make the time show
														} ],
												eventMouseover : function(data,
														event, view) {

													tooltip = '<div class="tooltiptopicevent" style="width:auto;height:auto;background:#feb811;position:absolute;z-index:10001;padding:10px 10px 10px 10px ;  line-height: 200%;">'
															+ 'title: '
															+ ': '
															+ data.title
															+ '</br>'
															+ 'start: '
															+ ': '
															+ data.start
															+ '</div>';

													$("body").append(tooltip);
													$(this)
															.mouseover(
																	function(e) {
																		$(this)
																				.css(
																						'z-index',
																						10000);
																		$(
																				'.tooltiptopicevent')
																				.fadeIn(
																						'500');
																		$(
																				'.tooltiptopicevent')
																				.fadeTo(
																						'10',
																						1.9);
																	})
															.mousemove(
																	function(e) {
																		$(
																				'.tooltiptopicevent')
																				.css(
																						'top',
																						e.pageY + 10);
																		$(
																				'.tooltiptopicevent')
																				.css(
																						'left',
																						e.pageX + 20);
																	});

												},
												eventMouseout : function(data,
														event, view) {
													$(this).css('z-index', 8);
													$('.tooltiptopicevent')
															.remove();

												},

												eventClick : function(event,
														element) {

													//event.title = "CLICKED!";
													var title = prompt(
															"Please edit patient's name",
															event.title);
													event.title = title;
													var start = prompt(
															"Please edit patient's name",
															event.start);
													event.start = start;
													$('#calendar')
															.fullCalendar(
																	'updateEvent',
																	event);

												}
											})
						});
	</script>
	<div id='calendar' style="height: 30%; width: 45%;"></div>
</body>
</html>