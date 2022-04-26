import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              1.h.heightBox,

              'Order'.text.bold.size(15).make().pOnly(left: 25),
              1.5.h.heightBox,

              SizedBox(
                height: 90.h,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (BuildContext context,int index){
                      return Center(
                        child: Container(
                          height: 11.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(230, 230, 230, 1),
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Lorem Ipsum is simply dummy textof the printing and\ntypesettingindustry. Lorem Ipsum has been'
                                  'the\nindustry standard dummytext ever since the 1500s\nwhen an unknown printer galley of',style:
                              TextStyle(fontSize: 10,color: Colors.black,fontWeight: FontWeight.w600),),
                              Container(
                                height: 12.h,
                                child: Icon(FontAwesomeIcons.bookMedical,size: 35,color: buttonColor,),

                              ),
                            ],
                          ).pSymmetric(h: 3.w),
                        ).pSymmetric(v: 0.5.h),
                      );
                    }
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
