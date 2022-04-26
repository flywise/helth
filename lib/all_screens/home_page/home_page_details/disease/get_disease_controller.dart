import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'get_disease_model.dart';





class GetDiseaseController extends GetxController {
  RxBool isLoading = true.obs;
   List<GetDiseaseModel> getdisease=[];
  void callApi() async {
    getdisease= await ApiProvider.getdiseaseApi();
    if (getdisease.isNotEmpty) {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    callApi();
    super.onInit();
  }
}