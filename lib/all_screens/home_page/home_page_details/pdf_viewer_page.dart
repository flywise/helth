
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:heath/all_screens/home_page/home_page_details/pdf_controller.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';



class PdfViewerScreen extends StatelessWidget {
   PdfViewerScreen({Key? key}) : super(key: key);
  PdfController _pdfController = Get.put(PdfController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pdf View'),
        centerTitle: true,
        backgroundColor:themeColor,
      ),

      body:  SafeArea(
        child: Center(
            child: Obx(
                ()=> _pdfController.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : PDFViewer(
                  document: _pdfController.doc,
              ),
            )),
      ),
    );
  }
}
