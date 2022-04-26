import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heath/all_screens/home_page/profile_pages/support_brand/suppor_page.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'calender_practice_page.dart';
import '../home_page/profile_pages/faq_page.dart';

class GoogleFit extends StatefulWidget {
  const GoogleFit({Key? key}) : super(key: key);

  @override
  _GoogleFitState createState() => _GoogleFitState();
}

class _GoogleFitState extends State<GoogleFit> {
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
        title: 'Google Fit'.text.center.bold.size(19).black.make(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          22.h.heightBox,

          Center(
            child: Text('Connect Google fit with Healthcare',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),),
          ),


          1.h.heightBox,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 12.h,
                width: 12.w,
                child: Image.asset('lib/assets/stethoscope.png'),
              ),

              Row(
                children: [
                  Icon(Icons.circle,color: buttonColor,size: 15,),
                  1.w.widthBox,
                  Icon(Icons.circle,color: buttonColor,size: 15,),
                  1.w.widthBox,
                  Icon(Icons.circle,color: buttonColor,size: 15,),
                ],
              ),

              Container(
                height: 12.h,
                width: 12.w,
                child: Image.asset('lib/assets/heart (2).png'),
              ),
            ],
          ).pSymmetric(h: 20.w),

          2.h.heightBox,

          Text('but also the leap into electronic typesetting, '
              'remaining essentially unchanged. It was popularised in the'
              ' 1960s with the release of Letraset sheets containing Lorem'
              ' Ipsum passages, and more recently with desktop publishing so'
              'ftware like Aldus PageMaker including versions of Lorem Ipsum.',
            textAlign: TextAlign.center,style: TextStyle(
              fontSize: 12,
              //fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
            ),),
          2.h.heightBox,

          Text('The battery life will not be affected',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),),
          3.h.heightBox,

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Support()));
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Faq()));
              //Navigator.push(context, MaterialPageRoute(builder: (context)=> PracticeCalender()));

              //PracticeCalender


            },
            child: Container(
              height: 4.5.h,
              width: 20.w,
              color: themeColor,
              child: Center(
                child: Text('CONNECT',style: TextStyle(
                  color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold
                ),),
              ),

            ),
          ),

        ],
      ).px12(),
    );
  }
}
