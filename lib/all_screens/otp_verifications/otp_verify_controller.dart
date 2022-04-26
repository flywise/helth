import 'package:heath/all_screens/add_users/details_profile.dart';
import 'package:heath/all_screens/login_screen/controllers/login_mobile_conttroller.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';


class OtpVerifyController extends GetxController {

  RxBool isLoading = true.obs;

  GlobalKey<FormState> mobileform = GlobalKey();

 LoginMobileController loginMobileController = Get.find();



  void callOtpApi(String otp) async {
    http.Response r = await ApiProvider.verifyOTP(loginMobileController.mobile.text,otp);
    if (r.statusCode == 200) {
      Get.to(()=>DetailsProfile());
    }
  }

  String ? validateMobile(value) {
    if (value== '') {
      return 'please enter your otp';
    }return null;
  }
  checkMobile() async {
    var isValidate = mobileform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {
     // callotpApi();
    }
    mobileform.currentState!.save();
  }






}