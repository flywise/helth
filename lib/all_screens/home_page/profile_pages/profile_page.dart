import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heath/all_screens/home_page/profile_pages/faq_page.dart';
import 'package:heath/all_screens/home_page/profile_pages/rating_review_pages/ratting_and_review_page.dart';
import 'package:heath/all_screens/home_page/profile_pages/support_brand/suppor_page.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';

import '../edit_profiles/edit_profile_page/edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Setting'.text.bold.size(15).start.make().pSymmetric(h: 3.w,v: 2.h),

          Center(
            child: Container(
                height: 20.h,
                width: 100.w,
                color: buttonColor,
                child:
                Center(
                  child: Icon(Icons.person,size: 98,)
                )
            ),
          ),
          2.h.heightBox,

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mikky',style: TextStyle
                          (
                            fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),),

                        Text('San Francisco,CA',style: TextStyle
                          (
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),),
                      ],

                    ),
                  ),

                  Container(
                    height: 6.h,
                    width: 25.w,
                    color: buttonColor,
                    child: Center(
                      child: Text('EDIT',style: TextStyle
                        (
                        fontWeight: FontWeight.w600,
                        fontSize: 12,color: Colors.white,
                      ),),
                    ),
                  ).onTap(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfile()));
                  }),
                ],
              ).pSymmetric(h: 7.w),

              2.h.heightBox,

              SizedBox(
                height: 40.h,
                child: ListView(
                  padding: EdgeInsets.all(0.0),
                  children: [
                    Container(
                      child: ListTile(
                        leading:Image.asset('lib/assets/order.png',height: 55,width: 55,),
                        //Icon(FontAwesomeIcons.calendarCheck,color: Colors.black,),
                        title: Text('FAQ',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Faq()));
                    }),

                    Container(
                      child: ListTile(
                        leading:Image.asset('lib/assets/order.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('Support',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Support()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/group.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('Contact Details',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalDetails()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/offer.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('Rating & Review',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RatingReview()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset('lib/assets/article.png',height: 55,width: 55,),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text('Sign Out',style: TextStyle(color: Colors.black),),
                        //PersonalDetails
                      ),
                    ).onTap(() {

                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalDetails()));
                    }),

                  ],
                ),
              ),
            ],
          ).p8(),
        ],
      ),

    );
  }
}
