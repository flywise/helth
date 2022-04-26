import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:heath/all_screens/home_page/home_screen.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

class AddUserController extends GetxController {
  GlobalKey<FormState> userform = GlobalKey();



  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController mobile = TextEditingController();

  //................................

  @override
  void onInit() {
    super.onInit();
    name;
    email;
    age;
    mobile;
  }

  String ? validatename(value) {
    if (value == '') {
      return ' please enter Name';
    }
    return null;
  }
  CheckName () {
    var isValidate = userform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {
      //Get.to(()=> HomePage());
    }
    userform.currentState!.save();
  }


  String ? validateEmail(value) {
    if (value == '') {
      return ' please enter valid email';
    }
    return null;
  }
  CheckEmail () {
    var isValidate = userform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {
      //Get.to(()=> HomePage());
    }
    userform.currentState!.save();
  }



  String ? validateAge(value) {
    if (value == '') {
      return ' please enter your age';
    }
    return null;
  }
  CheckAge () {
    var isValidate = userform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {

    }
    userform.currentState!.save();
  }



  String ? validateMobile(value) {
    if (value == '') {
      return ' please enter valid mobile number';
    }
    return null;
  }

  CheckMobile () {
    var isValidate = userform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {
      callAdduserApi();
    }
    userform.currentState!.save();
  }
  void callAdduserApi() async {
    http.Response r = await ApiProvider.addUser(name.text,email.text,age.text,mobile.text);
    if(r.statusCode==200){
      Get.to(()=> HomePage());
    }
  }
}