import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:heath/drawer_screen/book_appointment_screens/patient_details/patient_details_page.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

import 'member_details/member_details_controller.dart';

class SelectTime extends StatelessWidget {
   SelectTime({Key? key,required this.name, required this.relation, required this.number, required this.email, required this.package, required this.DOB, required this.date,required this.gender}) : super(key: key);

  final AddMemberController _addMemberController = Get.find();
  final name;
  final relation;
  final number;
  final email;
  final package;
  final DOB;
  final date;
  final gender;

  //..........................................................


  List<String> items = <String>[
    "07:30 AM",
    "08:00 AM",
    "08:30 AM",
    "09:00 AM",
    "9:30 AM",
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
  ];
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
        title: 'Select Time'.text.center.bold.size(19).black.make(),
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

          9.h.heightBox,
          Text (
            'Date Selected December 20 2021',style: TextStyle(
            color: Colors.black,fontSize: 16,
          ),
          ),
          1.h.heightBox,

          Container(
            color: buttonColor,
            child: Column(

              children: [
                Text (
                  'Pick a time for Appointment',style: TextStyle(
                  color: Colors.white,fontSize: 14,
                ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Text_Text(items[index],() {


                        //time controller functanility.......................
                        _addMemberController.selectedTime(items[index]);


                        //_addMemberController.callMemberApi();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientDetails(
                     name: name,
                         relation: relation,
                         number: number,
                         email: email,
                         package: package,
                         DOB: DOB,
                         date: date,
                          time:   _addMemberController.selectedTime(items[index]),
                          gender: gender
                        )));

                      });
                    }),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

Widget Text_Text(title,ontap){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: ontap,
      child: Column(

        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              //color: themeColor,
            ),
            child: Container(
                child: '$title'.text.semiBold.white.size(12).makeCentered()
            ).onTap(ontap),
          ),
          0.5.h.heightBox,
          Container(
            height: 0.2.h,
            width: 20.w,
            color: Colors.white,
          ),
        ],
      ),

    ),
  );

}
