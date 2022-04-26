import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:heath/controller_generals/checkbox_controller1.dart';
import 'package:heath/drawer_screen/book_appointment_screens/book_appoit_all_cat_controller/book_apptmnt_all_cat_controller.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'member_details/member_details_page.dart';

class BookPackages extends StatelessWidget {
  BookPackages({Key? key, required this.package}) : super(key: key);
  final package;

  BookAppointmentAllController _bookAppointmentAllController = Get.find();
  Controller _controller = Get.find();



  bool firstbox = false;
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
      body: Obx(()=> _bookAppointmentAllController.isLoading.value
        ? CircularProgressIndicator().centered()
        :Column(
        children: [
          Material(
            elevation: 4,
            child: Container(

              width: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_bookAppointmentAllController.getallcategory.first.doctorname!,style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,

                  ),).p12(),
                  Text('Includes 77 Tests',style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,

                  ),).px(12),
                  1.h.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('You will get the report in : 24 hrs',style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,

                      ),).px(55),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: '₹1099/-', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 13)),
                            TextSpan(text: '  ₹599/-', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 13)),
                          ],
                        ),
                      ),
                    ],


                  ).pSymmetric(h: 5.w),

                  3.h.heightBox,

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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(text: 'Mikky', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 13)),
                            TextSpan(text: '(Self)', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 13)),
                          ],
                        ),
                      ),

                      Obx(()=>Container(
                        height: 6.h,
                        width: 19.w,
                        child: CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            value: _controller.handlerRequired.value,
                            onChanged: _controller.onHandlerChanged),
                      )),


                      // Checkbox(
                      //   value: firstbox,
                      //   onChanged: (value) {
                      //     // setState(() {
                      //     //   firstbox = value!;
                      //     // }
                      //     // );
                      //   },
                      // ),

                    ],
                  ).pSymmetric(v: 0.h,h: 3.4.w),
                  Divider(
                    height: 0.0.h,
                    thickness: 2,
                  ).pSymmetric(h: 3.4.w),
                  0.9.heightBox,

                  Text('+Add New Member',style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,

                  ),).pSymmetric(h: 35.w,v: 1.5.h),


                ],
              ),
            ),
          ),
          3.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 3.5.h,
                width: 25.w,
                color: buttonColor,
                child:Center(
                  child: Text('Book Online',style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,

                  ),),
                ),
              ).p12(),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MemberDetails(
                    package: package
                  )));
                },
                child: Container(
                  height: 3.5.h,
                  width: 25.w,
                  color: buttonColor,
                  child:Center(
                    child: Text('Book Ofline',style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,

                    ),),
                  ),
                ).p12(),
              ),
            ],
          ),
        ],
      ),
      ),

    );
  }
}
