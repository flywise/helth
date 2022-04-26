

import 'dart:io';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/all_screens/home_page/home_page_details/pdf_viewer_page.dart';
import 'package:heath/all_screens/home_page/home_page_details/profile/get_profile_controller.dart';
import 'package:heath/all_screens/home_page/home_page_details/top_package/top_packages_controller.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'banner/home_page_details_controller.dart';
import 'disease/get_disease_controller.dart';
import 'package:file_picker/file_picker.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:get/get.dart';

class HomePageDetails extends StatelessWidget {
   HomePageDetails({Key? key}) : super(key: key);

   HomePageController _homePageController = Get.put(HomePageController());
   GetProfileController _getProfileController = Get.put(GetProfileController());
   GetDiseaseController _getDiseaseController = Get.put(GetDiseaseController());
   GetTopPackagesController _getTopPackagesController = Get.put(GetTopPackagesController());

  List<String> text = ['Book Home Sample collection','Upload Prescription','Book Lab Test Via Whatsapp','Download Your report',];
  List<String> image = ['lib/assets/result.png','lib/assets/policy.png','lib/assets/whatsapp7070.png',
                           'lib/assets/computer.png',];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => (_getDiseaseController.isLoading.value&&
          _homePageController.isLoading.value&&
          _getProfileController.isLoading.value&&_getTopPackagesController.isLoading.value)
        ? CircularProgressIndicator().centered()
        :

      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              2.h.heightBox,
              Container(
                height: 4.2.h,
                width: 94.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(0),
                  border: Border.all(color: themeColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 6.h,width: 70.w,
                        color: Colors.white,
                        child: VxTextField(
                          prefixIcon: Icon(Icons.search),
                          hint: ' Search any test',
                          keyboardType: TextInputType.name,
                          obscureText: false,
                          //controller: _homePageController.otp,
                          borderType: VxTextFieldBorderType.none,
                          borderRadius: 5,
                          borderColor: Colors.grey,)),
                    Container(
                      height: 6.5.h,
                      width: 0.2.w,
                      color: themeColor,
                    ),
                    InkWell(
                      onTap: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpVerification()));
                      },
                      child: Container(
                        height: 5.h,
                        child: Center(
                          child: Container(
                            height: 37,
                            width: 35,
                            child: Center(child: Image.asset('lib/assets/result.png')),
                          ).pOnly(right: 3.w),
                        ),
                      ),
                    ),
                  ],
                ),
              ).onTap(() {
                //Navigator.push(context, (context)=> VarifyNumber())
              }).pSymmetric(h: 3.w),

              1.h.heightBox,

              SizedBox(
                height: 14.h,
                width: 95.w,
                child: ListView.builder(
                    //physics:  NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount:_homePageController.getbanner.length,
                    itemBuilder: (BuildContext context,int index){
                      return Container(
                        height: 9.h,
                        width: 70.w,
                        color: themeColor,
                        child: Row(
                          children: [
                            Text('Lorem Ipsum is simply dummy text\n of the printing and typesetting \nindustry. Lorem Ipsum has been'
                        'the \n industry standard dummy\n text ever since the 1500s\n when an unknown printer galley of',style:
                              TextStyle(fontSize: 10),),
                            Container(
                              height: 12.h,
                              child: Lottie.asset('lib/assets/24867-online-doctor-app.json'),

                              //from here svg image code

                              // SvgPicture.asset(
                              //   'lib/assets/svg/Avanti-Home-1024x563-1-1 (1).svg',
                              //   // height: 20.0,
                              //   // width: 20.0,
                              //   //allowDrawingOutsideViewBox: true,
                              // ),
                            ),
                          ],
                        ).pSymmetric(h: 2.w),
                      ).pSymmetric(h: 2.w);
                    }
                ),
              ),

              1.h.heightBox,

              ClipPath(
                // clipper:  MyCustomClipper(),
                child: Container(
                  height: 4.h,
                  width: 95.w,
                  color: Color.fromRGBO(203, 248, 241, 1),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CustomPaint(

                        painter: RPSCustomPainter(),
                        child: Container(
                          height: 18.h,
                          width: 30.w,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Center(
                                  child: Icon(Icons.check_circle,color: Colors.white,)),
                              2.w.widthBox,
                              'FREE'.text.bold.black.size(18).make(),
                            ],

                          ),

                        ),
                      ),

                      Center(
                          child: 'Home Sample Collection for new user'.text.size(14).bold.make()),
                    ],
                  ) ,
                ),
              ),
              0.5.h.heightBox,

              Text('Term and Condition',style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: themeColor,
              ),).pOnly(left: 68.w),
              1.h.heightBox,

              'What are  you looking for'.text.bold.start.size(19).italic.black.make().pOnly(right: 40.w),

              SizedBox(
                height: 36.h,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GridView.builder(
                      physics:  NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 3/ 2,
                          crossAxisSpacing: 6,
                          mainAxisSpacing: 10),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          height: 5.h,
                          width: 24.w,
                          decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(

                                height: 10.h,
                                width: 20.w,

                                child:Image.asset(image[index],fit: BoxFit.fitWidth,),

                              ).onTap(() async {

                                if (index == 0) {

                                }
                                else if (index == 1) {

                                  FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

                                  if (result != null) {
                                    List<File> files = result.paths.map((path) => File(path!)).toList();
                                  } else {
                                    // User canceled the picker
                                  }

                                }

                                else if (index == 2) {

                                  const url = "https://wa.me/9811124504/?text=Hey buddy, try this super cool new app!";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }

                                }

                                else if (index == 3) {
                                Get.to(()=>PdfViewerScreen());

                                }

                                else {

                                }


                              }).pSymmetric(v: 1.h),
                              1.h.heightBox,
                              Text(text[index],style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),).pSymmetric(h: 1.w),
                            ],
                          ),
                        ).pSymmetric(h: 2.w,v: 0.h);
                      }),
                ),
              ),

              0.5.h.heightBox,

              Container(
                height: 17.h,
                width: 95.w,
                color: buttonColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ensuring your safety \nagainst Corona Virus\nat evert step.",
                      style: TextStyle(color: Colors.white,
                          fontStyle: FontStyle.italic,fontWeight:FontWeight.w500,fontSize: 18),),

                    Container(
                      height: 14.h,
                      width: 35.w,
                      color: Colors.white,
                    ),

                  ],
                ).pSymmetric(h: 4.w),
              ).pSymmetric(v: 1.h,h: 5.3.w),
              0.5.heightBox,
              'Top Profile'.text.bold.start.size(14).black.make().pOnly(right: 76.w),
              0.4.heightBox,
              SizedBox(
                height: 12.h,
                width: 95.w,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                    itemCount: _getProfileController.getprofile.length,
                    itemBuilder: (BuildContext context,int index) {
                      return
                        ImageText('https://encrypted-tbn0.gstatic.com/images?q='
                            'tbn:ANd9GcTHPzrTM0--WBDyGMewhgLOmX'
                            'NMIR2pIExnVTOpFxcIyW-vap82ofRY3YnI2uEsdKadgrU&usq'
                            'p=CAU',
                            _getProfileController.getprofile[index].profilename, () {});

                    }
                  ),
                ),
              ),

              0.5.heightBox,
              'Disease'.text.bold.start.size(14).black.make().pOnly(right: 80.w),
              0.4.heightBox,
              SizedBox(
                height: 12.h,
                width: 95.w,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _getDiseaseController.getdisease.length,
                      itemBuilder: (BuildContext context,int index) {
                        return
                          ImageText('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd'
                              '9GcTxJg4aZE9mhc4gzWJ_bq-uiS5bj6kooz1HaA&usqp=CAU',
                              _getDiseaseController.getdisease[index].diseasename, () {});

                      }
                  ),
                ),
              ),

              0.5.heightBox,
              'Top Packages'.text.bold.start.size(14).black.make().pOnly(right: 71.w),
              0.4.heightBox,
              SizedBox(
                height: 12.h,
                width: 95.w,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _getTopPackagesController.gettoppackeges.length,
                      itemBuilder: (BuildContext context,int index) {
                        return
                          ImageText('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTozHzoJhnkkLw0R'
                              'N_qOoXhlHp5lPKc6wQhfw&usqp=CAU',
                              _getTopPackagesController.gettoppackeges[index].packagename, () {});

                      }
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color =  themeColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;


    Path path0 = Path();
    path0.moveTo(size.width*0.0,size.height*0.4000000);
    path0.lineTo(size.width*0.0,size.height*0.0080000);
    path0.lineTo(size.width*0.9383333,size.height*0.0160000);
    path0.lineTo(size.width*0.6783333,size.height*0.9000000);
    path0.lineTo(size.width*0.0,size.height*0.9000000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

Widget ImageText( img,title,ontap){
  return Container(
    height: 15.h,
    width: 22.w,
    child: Column(
      children: [

       CircleAvatar(
         radius: 27,
         backgroundColor: buttonColor,
         backgroundImage: NetworkImage(img),

       ),
        '$title'.text.gray600.size(6).semiBold.gray700.make().objectCenter(),

      ],
    ),
  ).onTap(ontap);

}