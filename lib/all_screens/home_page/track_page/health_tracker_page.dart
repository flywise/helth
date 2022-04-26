import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:heath/drawer_screen/book_appointment_screens/book_appoit_all_cat_controller/review_screens/review_page.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class HealthTracker extends StatefulWidget {
  const HealthTracker({Key? key}) : super(key: key);

  @override
  _HealthTrackerState createState() => _HealthTrackerState();
}

class _HealthTrackerState extends State<HealthTracker> {
  FocusNode myFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor:themeColor,
        backgroundColor: Colors.white,
        leading: const Icon(FontAwesomeIcons.chevronLeft
          ,color: Colors.black,size: 20,).onTap(() {
          Navigator.pop(context);
        }),
        title: 'Health Tracker'.text.center.bold.size(19).black.make(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('Health Tracker',style: TextStyle(
            fontSize: 19,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),).p16(),

          2.h.heightBox,

          Container(
            height: 25.h,
            width: 100.w,
            child: Image.asset('lib/assets/pronation-feet-runner-shoes.png',fit: BoxFit.fill,),
          ),

          Container(
            child: Theme(
              data: Theme.of(context).copyWith(splashColor: Colors.transparent),
              child: TextField(
                // textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                   contentPadding: EdgeInsets.symmetric(vertical: -0.2.h),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: '    Jhon',
                  labelStyle: TextStyle(
                      color: myFocusNode.hasFocus ? Colors.blue : textField
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, color: textField),
                    borderRadius: BorderRadius.circular(8),
                  ),

                ),
              ),
            ),

            decoration: BoxDecoration (
                borderRadius: new BorderRadius.all(new Radius.circular(8)),
                color: Color.fromRGBO(219, 219, 219, 1)),   width: 100.w,   height:6.h,
            //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
            //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
          ).pSymmetric(v: 4.h,h: 5.w),

        ],
      ),
    );
  }
}
