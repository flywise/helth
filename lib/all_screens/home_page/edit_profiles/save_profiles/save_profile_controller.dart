import 'package:heath/all_screens/home_page/edit_profiles/save_profiles/save_profile_model.dart';
import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/drawer_screen/my_prescriptions/prescriptions_model.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';


class GetUserController extends GetxController {
  RxBool isLoading = true.obs;
  late  List<Getuser> getuser;
  void callApi() async {
    http.Response r = await ApiProvider.getalluserApi();
    if (r.statusCode==200) {
      getuser= getUserModelFromJson(r.body).getuser;
      isLoading(false);
    }
  }

  @override
  void onInit() {
    callApi();
    super.onInit();
  }
}