import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:heath/all_screens/home_page/profile_pages/support_brand/support_controller.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  Support({Key? key}) : super(key: key);
  SupportBrandController _supportBrandController = Get.put(SupportBrandController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor:themeColor,
        backgroundColor: Colors.white,
        leading: Icon(FontAwesomeIcons.chevronLeft
          ,color: Colors.black,size: 20,).onTap(() {
          Navigator.pop(context);
        }),
        title: 'Support'.text.center.bold.size(19).black.make(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          3.h.heightBox,

          Text('Support',
            style: TextStyle(
              fontSize: 15,
              //fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),),


          3.h.heightBox,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 8.h,
                width: 15.w,
                child:Image.network('https://encrypted-tbn0.gstatic.'
                    'com/images?q=tbn:ANd9GcQJGOK5OgY9gq5Ln9C7Ezx4hMIQd-tE3e9ZNQ&usqp=CAU'),
                //Image.asset('lib/assets/th (72).png',fit: BoxFit.fill,),
              ),

              Container(
                height: 8.h,
                width: 15.w,
                child: Image.network('https://unmetric.com/brands/assets/i/brands/pampers.png',fit: BoxFit.fill,)
                //Image.asset('lib/assets/th (73).png',fit:BoxFit.fill,),
              ),
            ],
          ).pSymmetric(h: 6.w),
          2.h.heightBox,

          Row(
            children: [
              Container(
                height: 10.h,
                width: 20.w,
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q='
                    'tbn:ANd9GcTGf2Cq3cDiSauRWDaa6-JXSua4A6rvmbscwQ&usqp=CAU')
                //Image.asset('lib/assets/th (74).png'),
              ),
            ],
          ).pOnly(left: 35.w),

          5.h.heightBox,

          Text('but also the leap into electronic typesetting, '
              'remaining essentially unchanged. It was popularised in the'
              ' 1960s with the release of Letraset sheets containing Lorem'
              ' Ipsum passages, and more recently with desktop publishing so'
              'ftware like Aldus PageMaker including versions of Lorem Ipsum.'
              'but also the leap into electronic typesetting, '
              'remaining essentially unchanged. It was popularised in the'
              ' 1960s with the release of Letraset sheets containing Lorem'
              ' Ipsum passages, and more recently with desktop publishing so'
              'ftware like Aldus PageMaker including versions of Lorem Ipsum.',
            textAlign: TextAlign.start,style: TextStyle(
              fontSize: 12,
              //fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
            ),),
          2.h.heightBox,

          Text('Why do we use?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),),

          Text('but also the leap into electronic typesetting, '
              'remaining essentially unchanged. It was popularised in the'
              ' 1960s with the release of Letraset sheets containing Lorem'
              ' Ipsum passages, and more recently with desktop publishing so'
              'ftware like Aldus PageMaker including versions of Lorem Ipsum.'
              'but also the leap into electronic typesetting, '
              'remaining essentially unchanged. It was popularised in the'
              ' 1960s with the release of Letraset sheets containing Lorem'
              ' Ipsum passages, and more recently with desktop publishing so'
              'ftware like Aldus PageMaker including versions of Lorem Ipsum.',
            textAlign: TextAlign.start,style: TextStyle(
              fontSize: 12,
              //fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
            ),),
          3.h.heightBox,


        ],
      ).px12(),
    );
  }
}
