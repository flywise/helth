import 'package:heath/all_screens/home_page/home_page_details/top_package/top_packages_model.dart';
import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';


class GetTopPackagesController extends GetxController {
  RxBool isLoading = true.obs;
  List<GetTopPackagesModel> gettoppackeges=[];
  void callApi() async {
    gettoppackeges= await ApiProvider.gettoppackagesApi();
    if (gettoppackeges.isNotEmpty) {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    callApi();
    super.onInit();
  }
}