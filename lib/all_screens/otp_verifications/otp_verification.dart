import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:heath/all_screens/login_screen/controllers/login_mobile_conttroller.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import '../add_users/details_profile.dart';
import 'otp_verify_controller.dart';

class OtpVerification extends StatelessWidget {
   OtpVerification({Key? key}) : super(key: key);

   LoginMobileController loginMobileController = Get.find();
  OtpVerifyController _otpVerifyController = Get.put(OtpVerifyController());
  bool firstbox = false;
  get otp => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,

          child: Column(
            children: [

              6.h.heightBox,


              Container(
                  height: 40.h,
                  child: Image.asset('lib/assets/welcome_image.png')),

              29.h.heightBox,

              Container(
                height: 25.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: themeColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Verification',style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),),
                    Text('Enter OTP sent to your registered mobile number',style: TextStyle(
                      fontSize: 8.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),),
                    3.h.heightBox,
                    Container(
                      height: 6.h,
                      width: 70.w,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: OtpTextField(

                          keyboardType: TextInputType.text,
                          fillColor: Colors.white,
                          filled: true,
                          fieldWidth: 50,
                          numberOfFields: 4,
                          borderColor: Color(0xFF512DA8),
                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verificationCode){
                            _otpVerifyController.callOtpApi(verificationCode);
                           /* showDialog(
                                context: context,
                                builder: (context){
                                  return AlertDialog(
                                    title: Text("Verification Code"),
                                    content: Text('Code entered is $verificationCode'),
                                  );
                                }
                            );*/
                          }, // end onSubmit
                        ),
                      ),
                    ),
                    2.h.heightBox,
                    Container(
                      height: 4.5.h,
                      width: 27.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.15,0)
                        )],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: "Continue".text.bold.center.size(14).make()),
                    ).onTap(() {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsProfile()));

                    }),
                  ],
                ).pSymmetric(h: 4.w,v: 1.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}