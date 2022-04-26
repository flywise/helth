import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heath/all_screens/unrout_page_screen/notification_page.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class MyAppointment extends StatefulWidget {
  const MyAppointment({Key? key}) : super(key: key);

  @override
  _MyAppointmentState createState() => _MyAppointmentState();
}

class _MyAppointmentState extends State<MyAppointment> {
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
        title: 'My Appointments'.text.center.bold.size(19).black.make(),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'My Appointment'.text.bold.size(15).start.make().pSymmetric(h: 2.w,v: 2.h),

          12.h.heightBox,

          Center(
            child: Container(
                height: 3.5.h,
                width: 33.w,
                color: buttonColor,
                child:
                Center(
                  child: Text('Book a Test Now',style: TextStyle(
                      fontSize: 11,fontWeight: FontWeight.w500,color: Colors.white
                  ),),
                )
            ),
          ).onTap(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
          }),
        ],
      ).p12(),
    );
  }
}
