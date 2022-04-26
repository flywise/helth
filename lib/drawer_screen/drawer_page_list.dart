
import 'dart:ui';

import 'package:heath/all_screens/home_page/order_screen_page.dart';
import 'package:heath/all_screens/unrout_page_screen/connect_with_google_fit.dart';
import 'package:heath/all_screens/unrout_page_screen/my_appointment_page.dart';
import 'package:heath/all_screens/unrout_page_screen/notification_page.dart';
import 'package:heath/all_screens/home_page/profile_pages/rating_review_pages/ratting_and_review_page.dart';
import 'package:heath/all_screens/home_page/user_comments/user_comment_screen.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'article_page/article_screen.dart';
import 'book_appointment_screens/book_appointment.dart';
import 'history_page.dart';
import 'my_prescriptions/my_prescriptions_page.dart';
import 'my_receipt/my_receipts.dart';
import 'my_report/my_report_page.dart';

class OpenDrawer extends StatefulWidget {
  const OpenDrawer({Key? key}) : super(key: key);

  @override
  _OpenDrawerState createState() => _OpenDrawerState();
}

class _OpenDrawerState extends State<OpenDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0,sigmaY: 5),
          child: Column(
            children: [

              2.h.heightBox,

              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(0.0),
                  children: [
                    Container(
                      child: ListTile(
                        leading:Image.asset('lib/assets/order.png',height: 55,width: 55,),
                        //Icon(FontAwesomeIcons.calendarCheck,color: Colors.black,),
                        title: Text('Book Appointment',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BookAppointment()));
                    }),

                    Container(
                      child: ListTile(
                        leading:Image.asset('lib/assets/order.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('My Order',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/group.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('My family and Friends',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleFit()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/offer.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('Special Offer',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>UserComments()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/article.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('My Report',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyReports()));
                    }),
                    Container(
                      child: ListTile(
                        leading:Image.asset('lib/assets/article.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('My Receipts',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyReceipts()));
                    }),//ShrareDetails
                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/article-1.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('My Prescription',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPrescriptions()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/article-2.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('Article',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Article()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/group (1).png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('Reffer a Friend',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryPage()));
                    }),


                    Container(
                      child: ListTile(
                        leading: Icon(Icons.calendar_today_outlined,size: 20,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('My Appointment',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).px16().onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppointment()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/notification-bell.png',height: 20,width: 20,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('Notifications',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).px16().onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/bubble-chat.png',height: 20,width: 20,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('user commrnts',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).px16().onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>UserComments()));
                    }),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

