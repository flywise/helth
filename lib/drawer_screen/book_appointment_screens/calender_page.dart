import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:heath/drawer_screen/book_appointment_screens/selected_time.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';

import 'member_details/member_details_controller.dart';

class Calender extends StatefulWidget {
   Calender({Key? key, required this.name, required this.relation, required this.DOB, required this.number, required this.email,required  this.package, required this.gender}) : super(key: key);
final name;
final relation;
final DOB;
final number;
final email;
final package;
final gender;
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {

  final AddMemberController _addMemberController = Get.find();


  //Map<DateTime, List<Event>>? selectedEvent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor:themeColor,
        backgroundColor: Colors.white,
        leading: Icon(FontAwesomeIcons.chevronLeft
          ,color: Colors.black,size: 20,).onTap(() {
          Navigator.pop(context);
        }),
        title: 'Packages'.text.center.bold.size(19).black.make(),
      ),
      body: Obx(()=> Column(
        children: [
          Material(
            elevation: 4,
            child: Container(
              width: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('DR.Batra packages',style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,

                  ),).p12(),
                  const Text('Includes 77 Tests',style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,

                  ),).px(12),
                  1.h.heightBox,



                  1.h.heightBox,

                  Row(
                    children: [
                      Container(
                        height: 3.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 1),
                        ),
                        child: Center(child: Text('Recommended for Male Female',style:
                        TextStyle(
                          fontSize: 8,
                        ),)),
                      ).p12(),
                      Container(
                        height: 3.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 1),
                        ),
                        child: Center(child: Text('Age group 5,99 yrs',style:
                        TextStyle(
                          fontSize: 8,
                        ),)),
                      ).px1(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          RichText(
                            text: TextSpan(

                              children: <TextSpan>[
                                TextSpan(text: '₹1099/-', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 13)),
                                TextSpan(text: '  ₹599/-', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 13)),
                              ],
                            ),
                          ),
                        ],


                      ).pSymmetric(h: 7.2.w),
                    ],
                  ),

                ],
              ),
            ),
          ),

          TableCalendar(

            firstDay: DateTime(2020),
            focusedDay: _addMemberController.selectedDay.value,
            //secondfocusedDay: available,
            lastDay: DateTime(2050),
            calendarFormat: _addMemberController.format,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            startingDayOfWeek: StartingDayOfWeek.monday,
            daysOfWeekVisible: true,
            onDaySelected: (select, focus) {
              _addMemberController.selectedDay.value = select;
              _addMemberController.focusDay.value = focus;
              //print(focusDay);

              Get.to(()=> SelectTime(
               name: widget.name,
                relation: widget.relation,
               DOB: widget.DOB,
               number: widget.number,
               email: widget.email,
               package: widget.package,
               date: _addMemberController.selectedDay.value,
                  gender: widget.gender

              ));

              //from here we will navigate next page

            },
            calendarStyle: cstyle,
            selectedDayPredicate: (date) {
              return isSameDay(_addMemberController.selectedDay.value, date);
            },
            //eventLoader: getEventFromDay,
          ),
          3.h.heightBox,
        ],
      ),
    ),


    );
  }
  var cstyle = const CalendarStyle(
    //today decoration
    todayDecoration: BoxDecoration(
      shape: BoxShape.rectangle,
      color: Vx.orange500,
    ),
    todayTextStyle: TextStyle(
      color: Vx.white,
      fontWeight: FontWeight.bold,
    ),

    //selected date
    selectedDecoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Vx.blue600,
    ),
    selectedTextStyle: TextStyle(
      color: Vx.white,
      fontWeight: FontWeight.bold,
    ),

    //available date
    // availableDecoration: BoxDecoration(
    //   shape: BoxShape.circle,
    //   color: Vx.orange500,
    // ),
    // availableTextStyle: TextStyle(
    //   color: Vx.white,
    //   fontWeight: FontWeight.bold,
    // ),
  );
}

