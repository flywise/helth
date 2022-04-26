import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:heath/all_screens/home_page/home_screen.dart';
import 'package:heath/drawer_screen/book_appointment_screens/download_receipts_page.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;
import 'package:table_calendar/table_calendar.dart';

import '../calender_page.dart';

class AddPatientController extends GetxController {
  RxBool isLoading = true.obs;
  GlobalKey<FormState> userform = GlobalKey();



  // void callMemberApi() async {
  //   http.Response r = await ApiProvider.addMemberApi(name.text,relation.text,DOB.text,gender.text,email.text);
  //   if(r.statusCode==200){
  //     //Get.to(()=> Calender());
  //   }
  // }
  //
  TextEditingController Patientname = TextEditingController();

  TextEditingController Pateintnumber = TextEditingController();





  //................................

  @override
  void onInit() {
    super.onInit();

  }

  String ? validatename(value) {
    if (value == '') {
      return ' please enter Name';
    }
    return null;
  }
  String ? validateNumber(value) {
    if (value == '') {
      return ' please enter Name';
    }
    return null;
  }


  CheckEmail (bookingdate,bookingTime,name,package,relation,DOB,gender,number,email) {
    var isValidate = userform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {
     callMemberApi(bookingdate, bookingTime, name, package, relation, DOB, gender, number, email);
    }
    userform.currentState!.save();
  }
void callMemberApi(bookingdate,bookingTime,name,package,relation,DOB,gender,number,email) async {
  http.Response r = await ApiProvider.addMemberApi(bookingdate, bookingTime, Patientname.text, name, Pateintnumber.text, package, relation, DOB, gender, number, email);
  if(r.statusCode==200){
    Get.snackbar('Success', 'Done');
    Get.to(()=> DownloadReceipts());
  }
}


}