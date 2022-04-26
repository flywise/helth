import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/all_screens/add_users/user_controllers.dart';
import 'package:heath/all_screens/home_page/home_screen.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'add_user_gender_controllers.dart';
class DetailsProfile extends StatelessWidget {
   DetailsProfile({Key? key}) : super(key: key);
   //from here call controller..............
  final AddUserController _addUserController = Get.put(AddUserController());

   UserGenderController _userGenderController = Get.put(UserGenderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _addUserController.userform,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              'Enter Your Details'.text.bold.size(14).start.make().pOnly(left: 3.w,top: 3.h),
              2.h.heightBox,
              TextFormField(
                validator: _addUserController.validatename,
                controller: _addUserController.name,
                decoration: InputDecoration(
                  hintText: 'Name',
                    enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),

                ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),

              ),
              ),
              ).pSymmetric(h: 4.w),
               TextFormField(
                 validator: _addUserController.validateEmail,
                 controller: _addUserController.email,

                decoration: InputDecoration(
                  hintText: 'Email',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),

                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),

                  ),
                ),
              ).pSymmetric(h: 4.w),
               TextFormField(
                 validator: _addUserController.validateAge,
                 controller: _addUserController.age,
                decoration: InputDecoration(
                  hintText: 'Age',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),

                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),

                  ),
                ),
              ).pSymmetric(h: 4.w),
               TextFormField(
                controller: _addUserController.mobile,
                validator: _addUserController.validateMobile,
                decoration: InputDecoration(
                  hintText: 'Mobile',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),

                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),

                  ),
                ),
              ).pSymmetric(h: 4.w),
              3.h.heightBox,


                  // Container(
                  //   child: Row(
                  //     children: [
                  //       Icon(FontAwesomeIcons.mars,size: 18,),
                  //       2.w.widthBox,
                  //       Text('Male',style: TextStyle(
                  //         color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold
                  //       ),)
                  //     ],
                  //   ),
                  // ),



                        Row(
                          children: [
                            Container(
                              height: 4.h,
                              width: 40.w,
                              child: Obx(() => RadioListTile(
                                value: _userGenderController.genderTypes[0],
                                groupValue: _userGenderController.genderMethod.value,
                                onChanged: (val) {
                                  _userGenderController.genderMethod.value = val as String;
                                },
                                title:Text("Male",
                                  style: TextStyle(
                                      color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),

                              ),
                              ),
                            ),
                            Container(
                              height: 4.h,
                              width: 39.w,
                              child: Obx(() => RadioListTile(
                                value: _userGenderController.genderTypes[1],
                                groupValue: _userGenderController.genderMethod.value,
                                onChanged: (val) {
                                  _userGenderController.genderMethod.value = val as String;
                                },
                                title:Text("Female",
                                  style: TextStyle(
                                      color: Colors.black,fontSize: 13,fontWeight: FontWeight.bold),),

                              ),
                              ),
                            ),
                          ],
                        ),


                        // Icon(FontAwesomeIcons.venus,size: 18,),
                        // 2.w.widthBox,
                        // Text('Female',style: TextStyle(
                        //     color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold
                        // ),)

              10.h.heightBox,

              Container(
                height: 5.h,
                width: 29.w,
                decoration: BoxDecoration(
                  color: themeColor,
                  borderRadius: BorderRadius.circular(10),

                ),

                child: Center(
                    child: 'Submit'.text.bold.center.white.size(14).make()),
              ).pOnly(left: 36.w).onTap(() {
               // Get.to(()=>AddUserController());
                _addUserController.CheckMobile();
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }),

              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        left: 270,
                        child:Container(
                          height: 22.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: themeColor,
                            shape: BoxShape.circle
                          ),

                        )
                    ),
                    Positioned(
                        top: 20,
                        right: -50,
                        child:Container(
                          height: 22.h,
                          width: 22.h,
                          decoration: BoxDecoration(
                              color: themeColor,
                              shape: BoxShape.circle
                          ),

                        )
                    ),
                    Positioned(
                        bottom: -190,
                        left: -80,
                        child:Container(
                          height: 82.h,
                          width: 39.h,
                          decoration: BoxDecoration(
                              color: themeColor,
                              shape: BoxShape.circle
                          ),

                        )
                    ),
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
