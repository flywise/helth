import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:get/get.dart';

class PdfController extends GetxController {
  RxBool isLoading = true.obs;
  late PDFDocument doc;
  getPdfFromUrl()async {
    doc = await PDFDocument.fromURL('http://www.africau.edu/images/default/sample.pdf');
    print("Im here");
    //isLoading(false);
    if(doc!=null){
      print("Im here too");
      isLoading(false);
    }
  }
@override
  void onInit() {
    getPdfFromUrl();
    super.onInit();
  }
}