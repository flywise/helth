import 'package:heath/all_screens/home_page/profile_pages/support_brand/support_brand_model.dart';
import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';




class SupportBrandController extends GetxController {
  RxBool isLoading = true.obs;
  late  List<GetSupportBrandModel> getsupportbrand;
  void callApi() async {
    getsupportbrand= await ApiProvider.getreceipt();
    if (getsupportbrand.isNotEmpty) {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    callApi();
    super.onInit();
  }
}