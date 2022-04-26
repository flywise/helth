import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'get_profile_model.dart';



class GetProfileController extends GetxController {
  RxBool isLoading = true.obs;
  List<GetProfileModel> getprofile=[];
  void callApi() async {
    getprofile= await ApiProvider.getmyprofileApi();
    if (getprofile.isNotEmpty) {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    callApi();
    super.onInit();
  }
}