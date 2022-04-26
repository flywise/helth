import 'package:heath/drawer_screen/book_appointment_screens/book_appoit_all_cat_controller/review_screens/model/pakages_model.dart';
import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';


class PackagesController extends GetxController {
  RxBool isLoading = true.obs;
  late GetPackages getpackage ;
  
  void callApi() async {
    getpackage= await ApiProvider.getAllpackage();
    if (getpackage != null) {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    callApi();
    super.onInit();
  }
}