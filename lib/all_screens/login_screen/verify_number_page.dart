import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:heath/controller_generals/checkbox_controller1.dart';
//import 'package:heath/controllers/login_mobile_conttroller.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'controllers/login_mobile_conttroller.dart';
import '../otp_verifications/otp_verification.dart';
class VerifyNumber extends StatelessWidget {
  VerifyNumber({Key? key}) : super(key: key);
  Controller _controller = Get.put(Controller());

 LoginMobileController _loginMobileController = Get.put(LoginMobileController());


  bool firstbox = false;
  get otp => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // Obx(()=> _loginMobileController.isLoading.value
      //   ? CircularProgressIndicator().centered()
      //   :

      SingleChildScrollView(
        child: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,

          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _loginMobileController.mobileform,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Verify Your number',style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 17.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),),
                      Text('Enter your number .we will send you OTP to verify your details',style: TextStyle(
                        fontSize: 8.sp,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),),
                      2.h.heightBox,
                      Container(
                        height: 4.2.h,
                        width: 94.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 5.h,
                                child: Center(child: '+91'.text.bold.size(14).make()),
                            ).pOnly(left: 2.w),
                            Container(
                              height: 6.5.h,
                              width: 0.2.w,
                              color: themeColor,
                            ),
                          Container(
                              height: 6.h,width: 70.w,
                                  color: Colors.white,
                              child: VxTextField(
                                controller:_loginMobileController.mobile,
                                hint: 'Mobile Number',
                                validator: _loginMobileController.validateMobile,
                                keyboardType: TextInputType.name,
                                obscureText: false,
                                //controller: otp,
                                borderType: VxTextFieldBorderType.none,
                                borderRadius: 5,
                                borderColor: Colors.grey,)),
                            Container(
                              height: 6.5.h,
                              width: 0.2.w,
                              color: themeColor,
                            ),
                            InkWell(
                              onTap: () {
                                _loginMobileController.checkMobile();

                                //Get.to (()=>OtpVerification());
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerification()));
                              },
                              child: Container(
                                height: 5.h,
                                child: Center(
                                    child: Icon(Icons.arrow_forward,color: themeColor,).pOnly(right: 2.w),
                              ),
                              ),
                            ),
                          ],
                        ),
                      ).onTap(() {

                        //Navigator.push(context, (context)=> VarifyNumber())
                      }),



                      Obx(()=>CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Row(
                            children: [
                              Text('By proceding you agree our ',style: TextStyle(
                                fontSize: 10,
                              ),),
                              Text('Term of Service & Privecy Policy',style: TextStyle(
                                  fontSize: 10,
                                  decoration: TextDecoration.underline
                              ),)
                            ],
                          ),
                          value: _controller.handlerRequired.value,
                          onChanged: _controller.onHandlerChanged)),

                    ],
                  ).pSymmetric(h: 4.w,v: 2.h),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

