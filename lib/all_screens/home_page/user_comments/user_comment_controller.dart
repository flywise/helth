import 'package:heath/all_screens/home_page/user_comments/user_comment_model.dart';
import 'package:heath/drawer_screen/book_appointment_screens/model/bookapt_all_cat_model.dart';
import 'package:heath/services/api_provider.dart';
import 'package:http/http.dart'as http;

import 'package:get/get.dart';
import 'package:flutter/material.dart';




class UserCommentController extends GetxController {
  RxBool isLoading = true.obs;
  late  GetUserCommentsModel viewcomment;
  void callApi() async {
    http.Response r= await ApiProvider.getusercommentApi();
    if (r.statusCode==200) {
      viewcomment= getUserCommentsModelFromJson(r.body);
      isLoading(false);
    }

  }

  @override
  void onInit() {
    callApi();
    super.onInit();
  }
}