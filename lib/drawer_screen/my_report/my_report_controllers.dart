import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'my_reports_model.dart';


class MyReportController extends GetxController {
  RxBool isLoading = true.obs;
  late  List<GetReports> getReports;
  void callApi() async {
    getReports= await ApiProvider.getreports();
    if (getReports.isNotEmpty) {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    callApi();
    super.onInit();
  }
}