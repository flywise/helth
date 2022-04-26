import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heath/all_screens/otp_verifications/otp_verification.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart' as http;
//import 'pckage:get/state_manager.dart';


class LoginMobileController extends GetxController {
  RxBool isLoading = true.obs;

  GlobalKey<FormState> mobileform = GlobalKey();
  TextEditingController mobile = TextEditingController();

  void callLoginApi() async {
    http.Response r = await ApiProvider.loginMobileOtp("${mobile.text}");
    if(r.statusCode==201){
      Get.to(()=> OtpVerification());
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    mobile;
  }

  String ? validateMobile(value) {
    if (value == '') {
      return 'Please enter your mobile number';
    }
    return null;
  }

  checkMobile() async {
    var isValidate = mobileform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {
     callLoginApi();
    }
    mobileform.currentState!.save();
  }
}