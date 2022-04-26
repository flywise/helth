import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';

import 'my_receipt_controller.dart';

class MyReceipts extends StatelessWidget {
   MyReceipts({Key? key}) : super(key: key);

   MyReceiptController _myReceiptController = Get.put(MyReceiptController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor:themeColor,
        backgroundColor: Colors.white,
        leading: const Icon(FontAwesomeIcons.chevronLeft
          ,color: Colors.black,size: 20,).onTap(() {
          Navigator.pop(context);
        }),
        title: 'My Receipt'.text.center.bold.size(19).black.make(),
      ),
      body: Obx(() => _myReceiptController.isLoading.value
        ? CircularProgressIndicator().centered()
        :

        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          1.h.heightBox,

          Text('My Receipts',style:
          TextStyle(fontSize: 16,fontWeight: FontWeight.bold),).pOnly(left: 4.7.w,top: 1.h),

          3.h.heightBox,


          SizedBox(
            height: 80.h,

            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _myReceiptController.getReceiipt.length,
                itemBuilder: (BuildContext context,int index){
                  return Container(
                    height: 7.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(230, 230, 230, 1),
                      borderRadius: BorderRadius.circular(20),

                    ),

                    child: Row(
                      children: [

                        Container(
                            height: 12.h,
                            child:Image.network('https://png.pngtree.com/png-clipart/20190614/'
                                'original/pngtree-receipt-vector-'
                                'icon-png-image_3718034.jpg',height: 42,width: 42,),
                            //Icon(Icons.note_add_rounded,size: 25,color: buttonColor,)
                          //Lottie.asset('lib/assets/24867-online-doctor-app.json'),

                          //from here svg image code

                          // SvgPicture.asset(
                          //   'lib/assets/svg/Avanti-Home-1024x563-1-1 (1).svg',
                          //   // height: 20.0,
                          //   // width: 20.0,
                          //   //allowDrawingOutsideViewBox: true,
                          // ),
                        ).pSymmetric(h: 2.w),
                        Text('john',style:
                        TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ).pSymmetric(h: 2.w),
                  ).pSymmetric(v: 0.5.h,h: 3.w);
                }
            ),
          ),

        ],
      ),
      ),
    );
  }
}
