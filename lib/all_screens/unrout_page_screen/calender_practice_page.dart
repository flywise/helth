import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PracticeCalender extends StatefulWidget {
  const PracticeCalender({Key? key}) : super(key: key);

  @override
  _PracticeCalenderState createState() => _PracticeCalenderState();
}

class _PracticeCalenderState extends State<PracticeCalender> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        shadowColor:themeColor,
        leading: Icon(FontAwesomeIcons.chevronLeft
          ,color: Colors.black,size: 20,).onTap(() {
          Navigator.pop(context);
        }),
        title: 'Calender Practice'.text.center.bold.size(19).black.make(),
      ),
      body: Column(
        children: [
          6.h.heightBox,
          //CalendarCarousel(),

        ],
      ),
    );
  }
}


