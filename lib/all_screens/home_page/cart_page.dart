import 'package:heath/constant_file/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
        title: 'Cart'.text.center.bold.size(19).black.make(),

      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          'Cart'.text.bold.size(15).start.make().pSymmetric(h: 2.w,v: 2.h),

          Center(
            child: Container(
              height: 4.h,
              width: 30.w,
              color: buttonColor,
              child:
              Center(
                child: Text('Book Appointment',style: TextStyle(
                  fontSize: 10,fontWeight: FontWeight.w500,color: Colors.white
                ),),
              )
            ),
          ),
        ],
      ).p12(),

    );
  }
}
