import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:heath/all_screens/home_page/home_screen.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;
import 'package:table_calendar/table_calendar.dart';

import '../calender_page.dart';
import '../selected_time.dart';

class AddMemberController extends GetxController {
  RxBool isLoading = true.obs;
  GlobalKey<FormState> userform = GlobalKey();





  //from here add member and add patient both ccontroller function ..............

  TextEditingController name = TextEditingController();
  TextEditingController relation = TextEditingController();
  TextEditingController DOB = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();

  //from here controller.....................
  var format = CalendarFormat.month;
  Rx <DateTime> selectedDay = DateTime.now().obs;
  Rx <DateTime> focusDay = DateTime.now().obs;
  DateTime available = DateTime.now();

  //from here time contoller fiunctions......if value in list view builder...........

  var selectedTime = 'time'.obs;






  //................................

  @override
  void onInit() {
    super.onInit();
    name;
    relation;
    DOB;
    number;
    email;
  }



  Future<Null> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2000),
        lastDate: DateTime(2101));
    if (picked != null){
      DOB.text = picked.day.toString()+'/'+picked.month.toString()+'/'+picked.year.toString();
    }
    // setState(() {
    //   selectedDate = picked;
    //   _dateController.text = DateFormat.yMd().format(selectedDate);
    // });
  }

  String ? validatename(value) {
    if (value == '') {
      return ' please enter Name';
    }
    return null;
  }


  String ? validaterelation(value) {
    if (value == '') {
      return ' please enter Relation';
    }
    return null;
  }


  String ? validateDOB(value) {
    if (value == '') {
      return ' please enter DOB';
    }
    return null;
  }


  String ? validateNumber(value) {
    if (value == '') {
      return ' please enter valid Number';
    }
    return null;
  }


  String ? validateEmail(value) {
    if (value == '') {
      return ' please enter valid email';
    }
    return null;
  }

  checkForm(package) {
    var isValidate = userform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {
      Get.to(()=> Calender(
        name: name,
          relation : relation,
          DOB: DOB,
          gender: gender,
          number: number,
          email: email,
        package: package

      ));
      //Get.to(()=> HomePage());
    }
    userform.currentState!.save();
  }

  // void callMemberApi() async {
  //   http.Response r = await ApiProvider.addMemberApi(bookingdate, bookingTime, patient, name, patientNumber, package, relation, DOB, gender, number, email)
  //   if(r.statusCode==200){
  //     Get.to(()=> SelectTime());
  //   }
  // }


}