// import 'package:flutter/material.dart';
// import 'package:flutter_calendar_carousel/classes/event.dart';
// import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
// import 'package:intl/intl.dart';
// //import 'package:medicine_reminder/src/ui/calendar/event.dart';
//
// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   DateTime _currentDate = DateTime.now();
//   DateTime _currentDate2 = DateTime.now();
//   String _currentMonth = DateFormat.yMMM().format(DateTime.now());
//   DateTime _targetDateTime = DateTime.now();
//
//   late String title;
//
//   Map<DateTime, List<Event>> selectedEvents = <DateTime, List<Event>>{};
//   DateTime selectedDay = DateTime.now();
//   DateTime focusedDay = DateTime.now();
//
//   TextEditingController _eventController = TextEditingController();
//
//   late CalendarCarousel _calendarCarouselNoHeader;
//
//   static Widget _eventIcon = new Container(
//     decoration: new BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.all(Radius.circular(1000)),
//         border: Border.all(color: Colors.blue, width: 2.0)),
//     child: new Icon(
//       Icons.person,
//       color: Colors.amber,
//     ),
//   );
//
//   EventList<Event> _markedDateMap = new EventList<Event>(
//     events: {
//       new DateTime(2020, 2, 10): [
//         new Event(
//           date: new DateTime(2020, 2, 14),
//           title: 'Event 1',
//           icon: _eventIcon,
//           dot: Container(
//             margin: EdgeInsets.symmetric(horizontal: 1.0),
//             color: Colors.red,
//             height: 5.0,
//             width: 5.0,
//           ),
//         ),
//         new Event(
//           date: new DateTime(2020, 2, 10),
//           title: 'Event 2',
//           icon: _eventIcon,
//         ),
//         new Event(
//           date: new DateTime(2020, 2, 15),
//           title: 'Event 3',
//           icon: _eventIcon,
//         ),
//       ],
//     },
//   );
//
//   @override
//   void initState() {
//     _markedDateMap.add(
//         new DateTime(2020, 2, 25),
//         new Event(
//           date: new DateTime(2020, 2, 25),
//           title: 'Event 5',
//           icon: _eventIcon,
//         ));
//
//     _markedDateMap.add(
//         new DateTime(2020, 2, 10),
//         new Event(
//           date: new DateTime(2020, 2, 10),
//           title: 'Event 4',
//           icon: _eventIcon,
//         ));
//
//     _markedDateMap.addAll(new DateTime(2019, 2, 11), [
//       new Event(
//         date: new DateTime(2019, 2, 11),
//         title: 'Event 1',
//         icon: _eventIcon,
//       ),
//       new Event(
//         date: new DateTime(2019, 2, 11),
//         title: 'Event 2',
//         icon: _eventIcon,
//       ),
//       new Event(
//         date: new DateTime(2019, 2, 11),
//         title: 'Event 3',
//         icon: _eventIcon,
//       ),
//     ]);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     _calendarCarouselNoHeader = CalendarCarousel<Event>(
//       todayBorderColor: Color(0xFF3EB16F),
//       onDayPressed: (DateTime date, List<Event> events) {
//         this.setState(() => _currentDate2 = date);
//         events.forEach((event) => print(event.title));
//       },
//       daysHaveCircularBorder: true,
//       showOnlyCurrentMonthDate: false,
//       weekendTextStyle: TextStyle(
//         color: Colors.red,
//       ),
//       thisMonthDayBorderColor: Colors.grey,
//       weekFormat: false,
// //      firstDayOfWeek: 4,
//       markedDatesMap: _markedDateMap,
//       height: 420.0,
//       selectedDateTime: _currentDate2,
//       targetDateTime: _targetDateTime,
//       customGridViewPhysics: NeverScrollableScrollPhysics(),
//       markedDateCustomShapeBorder:
//       CircleBorder(side: BorderSide(color: Colors.yellow)),
//       markedDateCustomTextStyle: TextStyle(
//         fontSize: 18,
//         color: Colors.blue,
//       ),
//       showHeader: false,
//       todayTextStyle: TextStyle(
//         color: Colors.blue,
//       ),
//
//       todayButtonColor: Colors.yellow,
//       selectedDayTextStyle: TextStyle(
//         color: Colors.yellow,
//       ),
//       minSelectedDate: _currentDate.subtract(Duration(days: 360)),
//       maxSelectedDate: _currentDate.add(Duration(days: 360)),
//       prevDaysTextStyle: TextStyle(
//         fontSize: 16,
//         color: Colors.pinkAccent,
//       ),
//       inactiveDaysTextStyle: TextStyle(
//         color: Colors.tealAccent,
//         fontSize: 16,
//       ),
//       onCalendarChanged: (DateTime date) {
//         this.setState(() {
//           _targetDateTime = date;
//           _currentMonth = DateFormat.yMMM().format(_targetDateTime);
//         });
//       },
//       onDayLongPressed: (DateTime date) {
//         print('long pressed date $date');
//       },
//     );
//
//     return Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 90,
//           backgroundColor: Color(0xFF3EB16F),
//           title: Text("Calendar"),
//           centerTitle: true,
//           textTheme: TextTheme(
//             headline6: TextStyle(fontSize: 44, fontFamily: "Angel"),
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               //custom icon
//
//               Container(
//                 margin: EdgeInsets.only(
//                   top: 30.0,
//                   bottom: 16.0,
//                   left: 16.0,
//                   right: 16.0,
//                 ),
//                 child: new Row(
//                   children: <Widget>[
//                     Expanded(
//                         child: Text(
//                           _currentMonth,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 24.0,
//                           ),
//                         )),
//                     FlatButton(
//                       child: Text('PREV'),
//                       onPressed: () {
//                         setState(() {
//                           _targetDateTime = DateTime(
//                               _targetDateTime.year, _targetDateTime.month - 1);
//                           _currentMonth =
//                               DateFormat.yMMM().format(_targetDateTime);
//                         });
//                       },
//                     ),
//                     FlatButton(
//                       child: Text('NEXT'),
//                       onPressed: () {
//                         setState(() {
//                           _targetDateTime = DateTime(
//                               _targetDateTime.year, _targetDateTime.month + 1);
//                           _currentMonth =
//                               DateFormat.yMMM().format(_targetDateTime);
//                         });
//                       },
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(horizontal: 16.0),
//                 child: _calendarCarouselNoHeader,
//               ), //
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton.extended(
//           onPressed: () => showDialog(
//             context: context,
//             builder: (context) => AlertDialog(
//               title: Text("Add Event"),
//               content: TextFormField(
//                 controller: _eventController,
//               ),
//               actions: [
//                 TextButton(
//                   onPressed: () => Navigator.pop(context),
//                   child: Text("Cancel"),
//                 ),
//                 TextButton(
//                   child: Text("Add"),
//                   onPressed: () {
//                     if (_eventController.text.isEmpty) {
//                     } else {
//                       if (selectedEvents[selectedDay] != null) {
//                         selectedEvents[selectedDay]!.add(
//                           Event(title: _eventController.text, ),
//                         );
//                       } else {
//                         selectedEvents[selectedDay] = [
//                           Event(title: _eventController.text, )
//                         ];
//                       }
//                     }
//
//                     Navigator.pop(context);
//                     _eventController.clear();
//                     setState(() {});
//                     return;
//                   },
//                 ),
//               ],
//             ),
//           ),
//           backgroundColor: Color(0xFF3EB16F),
//           label: Text("Add"),
//           icon: Icon(Icons.add),
//         ));
//   }
// }
//
