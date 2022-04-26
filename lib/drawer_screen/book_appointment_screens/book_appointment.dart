import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:heath/drawer_screen/book_appointment_screens/book_appoit_all_cat_controller/book_apptmnt_all_cat_controller.dart';
import 'package:heath/drawer_screen/book_appointment_screens/book_appoit_all_cat_controller/review_screens/review_page.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'book_appoit_all_cat_controller/review_screens/controllers/rating_review_controllers.dart';
import 'member_details/member_details_page.dart';
import 'model/bookapt_all_cat_model.dart';

class BookAppointment extends StatelessWidget {
   BookAppointment({Key? key}) : super(key: key);

  BookAppointmentAllController _bookAppointmentAllController = Get.put(BookAppointmentAllController());
   RatingReviewController ratingReviewController = Get.put(RatingReviewController());
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
        title: 'Book Appointment'.text.center.bold.size(19).black.make(),

      ),

      body: Obx(()=> _bookAppointmentAllController.isLoading.value
        ? CircularProgressIndicator().centered()
        : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Categories',style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w400,

          ),).p12(),


          SizedBox(
            height: 80.h,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _bookAppointmentAllController.getallcategory.length,
                itemBuilder: (BuildContext context,int index){
                  return Material(
                    elevation: 4.0,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_bookAppointmentAllController.getallcategory[index].doctorname!,style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,

                          ),).px12(),
                          Divider(
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                          Text('Includes 77 Tests',style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,

                          ),).px12(),
                          Text(_bookAppointmentAllController.getallcategory[index].testname!,style: TextStyle(
                            fontSize: 11,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,

                          ),).px12(),

                          Row(
                            children: [
                              Container(
                                height: 3.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,width: 1),
                                ),
                                child: Center(child: Text('Recommended for Male Female',style:
                                TextStyle(
                                  fontSize: 10,
                                ),)),
                              ).p12(),
                              Container(
                                height: 3.h,
                                width: 27.w,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,width: 1),
                                ),
                                child: Center(child: Text('Age group 5,99 yrs',style:
                                TextStyle(
                                  fontSize: 10,
                                ),)),
                              ).px1(),
                            ],
                          ),

                          7.h.heightBox,

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(text: '₹1099/-', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 13)),
                                    TextSpan(text: '  ₹599/-', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 13)),
                                  ],
                                ),
                              ),

                              Row(
                                children: [
                                  Container(
                                    height: 3.h,
                                    width: 19.w,
                                    color: buttonColor,
                                    child: Center(
                                      child: Text('Details',style: TextStyle(
                                          fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  ).onTap(() {
                                    ratingReviewController.packageId = _bookAppointmentAllController.getallcategory[index].id!;
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ReviewPage()));
                                  }),
                                  1.w.widthBox,

                                  Container(
                                    height: 3.h,
                                    width: 10.w,

                                    decoration: BoxDecoration(
                                      border: Border.all(color: buttonColor,width: 2),
                                    ),
                                    child: Center(
                                        child: Icon(Icons.phone,color: buttonColor,size: 19,)
                                    ),
                                  ),
                                ],
                              ),


                            ],
                          ).p12(),



                        ],
                      ),
                    ),
                  ).pSymmetric(v: 2.h);
                }
            ),
          ),

          //from here container


        ],
      ),
    ));
  }
}
