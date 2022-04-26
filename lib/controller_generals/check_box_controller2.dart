import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Checkbox2 extends GetxController {
  Rx<bool> value1 = false.obs;
  checkbox2(checkbox2Value){

    value1.value = checkbox2Value;

  }
}