import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Controller extends GetxController {
  Rx<bool> handlerRequired = false.obs;
  onHandlerChanged(handlerValue){
    //handlerRequired(handlerValue);
    handlerRequired.value = handlerValue;
  }
}