import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';


class BookAppointmentAllController extends GetxController {
  RxBool isLoading = true.obs;
  late  List<Getallcategory> getallcategory;
  void callApi() async {
    getallcategory= await ApiProvider.getallcategory();
    if (getallcategory.isNotEmpty) {
      isLoading(false);
    }
  }


  @override
  void onInit() {
    callApi();
    super.onInit();
  }
}