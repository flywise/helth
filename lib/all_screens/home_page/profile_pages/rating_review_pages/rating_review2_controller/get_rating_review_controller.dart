import 'package:heath/all_screens/home_page/profile_pages/rating_review_pages/rating_rev_model/rating_review_model.dart';
import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';




class GetRratingReviewController extends GetxController {
  RxBool isLoading = true.obs;
   List<Viewrating> viewrating = [];
  void callApi() async {
    viewrating = await ApiProvider.getrattintreview();
    if (viewrating.isNotEmpty) {
      isLoading(false);
    }
  }

  String rating= '';
  String packageId = '';

  @override
  void onInit() {
    callApi();
    super.onInit();
  }
}