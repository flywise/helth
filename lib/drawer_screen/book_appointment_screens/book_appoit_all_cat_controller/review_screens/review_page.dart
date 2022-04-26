import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/all_screens/home_page/profile_pages/rating_review_pages/ratting_and_review_page.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:heath/drawer_screen/book_appointment_screens/book_appoit_all_cat_controller/review_screens/controllers/rating_review_controllers.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../book_appointment.dart';
import '../../book_packages.dart';
import 'controllers/review_page_controller.dart';
const Color textField= Color.fromRGBO(180,180, 180, 1);

class ReviewPage extends StatelessWidget {
   ReviewPage({Key? key}) : super(key: key);

   PackagesController _packagesController = Get.put(PackagesController());
   RatingReviewController ratingReviewController = Get.find();


  FocusNode myFocusNode = new FocusNode();
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
        title: 'Review'.text.center.bold.size(19).black.make(),
      ),
      body: Obx(()=> _packagesController.isLoading.value
    ? CircularProgressIndicator().centered()
        :

      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DR.Batra packages',style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,

              ),).p12(),
              Material(
                elevation: 4.0,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _packagesController.getpackage.getpackage.description!,
                        style: TextStyle(
                        fontSize: 9,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,

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
                            ),)
                            ),
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
                      1.h.heightBox,

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Includes 77 Tests',style:
                          TextStyle(
                            fontSize: 12,
                          ),),
                          2.h.heightBox,

                          Text('Lipid profile 9',style:
                          TextStyle(
                            fontSize: 14,
                          ),).pSymmetric(v: 1.5.h),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),

                          Text('Liver Function Test 12',style:
                          TextStyle(
                            fontSize: 14,
                          ),).pSymmetric(v: 1.5.h),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),

                          Text('Complete Hemogram 24',style:
                          TextStyle(
                            fontSize: 14,
                          ),).pSymmetric(v: 1.5.h),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),

                          Text('Urine Routine & Microscopy Extended 21',style:
                          TextStyle(
                            fontSize: 14,
                          ),).pSymmetric(v: 1.5.h),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),

                          Text('Kidney Function Test KFT 9',style:
                          TextStyle(
                            fontSize: 14,
                          ),).pSymmetric(v: 1.5.h),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),

                          Text('Blood Glucose 1',style:
                          TextStyle(
                            fontSize: 14,
                          ),).pSymmetric(v: 1.5.h),
                          Divider(
                            height: 1,
                            thickness: 1,
                          ),
                          2.h.heightBox,
                        ],
                      ).pSymmetric(h: 3.w),
                    ],
                  ),
                ),
              ).pSymmetric(v: 2.h),

              0.h.heightBox,

              Material(
                elevation: 4,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                                  child: Text('Book Now',style: TextStyle(
                                      fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ).onTap(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> BookPackages(
                                  package: _packagesController.getpackage.getpackage.id
                                )));
                              }
                              ),
                            ],
                          ),


                        ],
                      ).p12(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: 'Reviews', style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 14)),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              Text('Rating',style: TextStyle(
                                  fontSize: 14,color: Colors.grey.shade700,fontWeight: FontWeight.bold
                              ),),
                              VxRating(
                                onRatingUpdate: (value) {
                                 ratingReviewController.rating= value;
                                },
                                count: 5,
                                selectionColor: Colors.black,
                                size: 30,
                              ),
                            ],
                          ),


                        ],
                      ).p12(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.person_pin,size: 30,),
                              Text('Nick Jones',style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,

                              ),),

                            ],
                          ),
                          Text('Lorem ipsum is simply dummy text of the printing and'
                            ,style: TextStyle(
                              fontSize: 11,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,

                            ),).pOnly(top: 2.h),
                        ],
                      ),
                      Divider(
                        height: 2.h,
                        thickness: 3,
                      ),
                      0.5.h.heightBox,
                      Text('Write your review',style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,

                      ),),

                      Container(
                        child: Theme(
                          data: Theme.of(context).copyWith(splashColor: Colors.white),
                          child: TextFormField(
                            controller: ratingReviewController .review,
                            maxLines: 9,
                            // textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: -0.2.h),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,

                              labelStyle: TextStyle(
                                  color: myFocusNode.hasFocus ? Colors.grey : Colors.white
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 0, color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),

                            ),
                          ),
                        ),

                        decoration: BoxDecoration (
                            border: Border.all(color: Colors.black,width: 1),
                            borderRadius: new BorderRadius.all(new Radius.circular(8)),
                            color: Colors.white   ),   width: 95.w,   height:20.h,
                        //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                        //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                      ).pSymmetric(v: 2.h),
                    ],
                  ),
                ),
              ),

              5.h.heightBox,

              Center(
                child: Container(
                  height: 3.h,
                  width: 22.w,
                  color: buttonColor,
                  child: Center(
                    child: Text('Submit Review',style: TextStyle(
                        fontSize: 10,color: Colors.white,fontWeight: FontWeight.bold
                    ),),
                  ),
                ).onTap(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ReviewPage()));
                }
                ),
              ),


            ],
          ).p12(),
        ),
      ),),
    );
  }
}
