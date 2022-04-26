import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        shadowColor:themeColor,
        backgroundColor: Colors.white,
        leading: const Icon(FontAwesomeIcons.chevronLeft
          ,color: Colors.black,size: 20,).onTap(() {
          Navigator.pop(context);
        }),
        title: 'Notifications'.text.center.bold.size(19).black.make(),
      ),

      body: Column(
        children: [
          1.h.heightBox,

          Text('Notifications',style:
          TextStyle(fontSize: 16,fontWeight: FontWeight.bold),).pOnly(left: 4.7.w,top: 1.h),

          3.h.heightBox,

          Text(' is simply dummy text of the printing and typesetting industry. '
              'Lorem Ipsum has been the industry\'s standard dummy text ever since'
              ' the 1500s,'
              ' when an unknown printer took a galley of type and '
              'scrambled it to make a type specimen book. It has survived '
              'not only five centuries, but also the leap into electronic'
              ' typesetting, remaining essentially unchanged. It was popularised'
              ' in the 1960s with the release of Letraset sheets containing Lorem '
              'Ipsum passages, and more recently with desktop publishing software like'
              ' Aldus PageMaker including versions of Lorem Ipsum.'


            ,style:
          TextStyle(fontSize: 12,fontWeight: FontWeight.bold),).pSymmetric(h: 4.5),
        ],
      ),
    );
  }
}
