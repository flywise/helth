import 'package:heath/all_screens/unrout_page_screen/my_appointment_page.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DownloadReceipts extends StatefulWidget {
  const DownloadReceipts({Key? key}) : super(key: key);

  @override
  _DownloadReceiptsState createState() => _DownloadReceiptsState();
}

class _DownloadReceiptsState extends State<DownloadReceipts> {
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
        title: 'Download Receipts'.text.center.bold.size(19).black.make(),
      ),
      body: Column(
        children: [
          Material(
            elevation: 4,
            child: Container(
              width: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('DR.Batra packages',style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,

                  ),).p12(),
                  const Text('Includes 77 Tests',style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,

                  ),).px(12),
                  1.h.heightBox,



                  1.h.heightBox,

                  Row(
                    children: [
                      Container(
                        height: 3.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 1),
                        ),
                        child: Center(child: Text('Recommended for Male Female',style:
                        TextStyle(
                          fontSize: 8,
                        ),)),
                      ).p12(),
                      Container(
                        height: 3.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 1),
                        ),
                        child: Center(child: Text('Age group 5,99 yrs',style:
                        TextStyle(
                          fontSize: 8,
                        ),)),
                      ).px1(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: '₹1099/-', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 13)),
                                TextSpan(text: '  ₹599/-', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 13)),
                              ],
                            ),
                          ),
                        ],


                      ).pSymmetric(h: 7.2.w),
                    ],
                  ),

                ],
              ),
            ),
          ),

          2.h.heightBox,

          Text (
            'Appointment Has been Booked',style: TextStyle(
            color: Colors.grey.shade700,fontWeight: FontWeight.bold,fontSize: 16,
          ),
          ),
          2.h.heightBox,

          Text (
            'Download your Appointment Reciept',style: TextStyle(
            color: Colors.grey.shade700,fontWeight: FontWeight.bold,fontSize: 13,
          ),
          ),

          5.h.heightBox,

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.note_add_sharp,size: 37,),
              3.w.widthBox,

              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppointment()));
                },
                child: Container(
                  height: 5.h,
                  width: 25.w,
                  color: buttonColor,
                  child:Center(
                    child: Text (
                      'Download',style: TextStyle(
                      color: Colors.white,fontSize: 14,
                    ),
                    ),
                  ),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
