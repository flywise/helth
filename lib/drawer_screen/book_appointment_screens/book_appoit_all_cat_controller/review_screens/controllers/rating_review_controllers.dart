import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:heath/all_screens/home_page/home_screen.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;
import 'package:table_calendar/table_calendar.dart';



class RatingReviewController extends GetxController {
  RxBool isLoading = true.obs;
  GlobalKey<FormState> userform = GlobalKey();



  void callRatingReviewApi() async {
    http.Response r = await ApiProvider.addRatingReviewApi(rating,review.text,packageId,);
    if(r.statusCode==200){
      //Get.to(()=> Calender());
    }
  }

  //from here add member and add patient both ccontroller function ..............

  TextEditingController review = TextEditingController();
  String rating= '';
  String packageId = '';




  //................................

  @override
  void onInit() {
    super.onInit();
    rating;
    review;



    String ? validatreview(value) {
      if (value == '') {
        return ' pleasae enter review';
      }
      return null;
    }
    Checkreview() {
      var isValidate = userform.currentState!.validate();
      if (!isValidate) {
        return;
      }
      else {
        // Get.to(()=> HomePage());
      }
      userform.currentState!.save();
    }
  }

}