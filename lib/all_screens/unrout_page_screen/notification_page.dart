import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
        title: 'Nitifications'.text.center.bold.size(19).black.make(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          2.h.heightBox,

          Text (
            'Notification',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16,
          ),
          ),

          2.h.heightBox,

          Text (
            'text ever since the 1500s. when an unknoown printer took a gallery of '
                'type and scrambled it to make a type specimen book.it has survived not only'
                'five centuries,but also the leap into electronic typesetting,'
                'remaining essentially unchanged',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12,
          ),
          ),

          2.h.heightBox,

          Text (
            'text ever since the 1500s. when an unknoown printer took a gallery of '
                'type and scrambled it to make a type specimen book.it has survived not only'
                'five centuries,but also the leap into electronic typesetting,'
                'remaining essentially unchanged',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12,
          ),
          ),

          2.h.heightBox,

          Text (
            'text ever since the 1500s. when an unknoown printer took a gallery of '
                'type and scrambled it to make a type specimen book.it has survived not only'
                'five centuries,but also the leap into electronic typesetting,'
                'remaining essentially unchanged',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12,
          ),
          ),

          2.h.heightBox,

          Text (
            'text ever since the 1500s. when an unknoown printer took a gallery of '
                'type and scrambled it to make a type specimen book.it has survived not only'
                'five centuries,but also the leap into electronic typesetting,'
                'remaining essentially unchanged',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12,
          ),
          ),

          2.h.heightBox,

          Text (
            'text ever since the 1500s. when an unknoown printer took a gallery of '
                'type and scrambled it to make a type specimen book.it has survived not only'
                'five centuries,but also the leap into electronic typesetting,'
                'remaining essentially unchanged',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12,
          ),
          ),

          2.h.heightBox,

          Text (
            'text ever since the 1500s. when an unknoown printer took a gallery of '
                'type and scrambled it to make a type specimen book.it has survived not only'
                'five centuries,but also the leap into electronic typesetting,'
                'remaining essentially unchanged',style: TextStyle(
            color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12,
          ),
          ),
        ],
      ).p8(),
    );
  }
}
