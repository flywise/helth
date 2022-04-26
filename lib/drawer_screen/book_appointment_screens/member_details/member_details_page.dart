import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:heath/controller_generals/radio_button_controller.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../calender_page.dart';
import 'member_details_controller.dart';

class MemberDetails extends StatelessWidget {
  MemberDetails({Key? key,  this.package}) : super(key: key);

  final package;

  final AddMemberController _addMemberController = Get.put(AddMemberController());
  GenderController genderController  = Get.put(GenderController());
  FocusNode myFocusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shadowColor:themeColor,
        backgroundColor: Colors.white,
        leading: Icon(FontAwesomeIcons.chevronLeft
          ,color: Colors.black,size: 20,).onTap(() {
          Navigator.pop(context);
        }),
        title: 'Packages'.text.center.bold.size(19).black.make(),
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _addMemberController.userform,
        //from here we will  change
        child: SingleChildScrollView(
          child: Column(
            children: [
              Material(
                elevation: 4,
                child: Container(
                  width: 100.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      3.h.heightBox,
                      Text('Includes 77 Tests',style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,

                      ),).px(12),
                      1.h.heightBox,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('You will get the report in : 24 hrs',style: TextStyle(
                            fontSize: 10,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,

                          ),).px(70),
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(text: '₹1099/-', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 12)),
                                TextSpan(text: '  ₹599/-', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                              ],
                            ),
                          ),
                        ],


                      ).pSymmetric(h: 3.w),

                      3.h.heightBox,
                      'Add Member'.text.semiBold.black.size(15).make().px(12),
                      0.5.heightBox,

                      // Text('+Add New Member',style: TextStyle(
                      //   fontSize: 13,
                      //   color: Colors.black,
                      //   fontWeight: FontWeight.w600,
                      //
                      // ),).pSymmetric(h: 35.w,v: 1.5.h),

                      Container(
                        child: Theme(
                          data: Theme.of(context).copyWith(splashColor: Colors.white),
                          child: TextFormField(
                            controller: _addMemberController.name,
                            validator: _addMemberController.validatename,

                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 1.0.h),
                              hintText: 'Enter Name',

                              labelStyle: TextStyle(

                              ),


                            ),
                          ),
                        ),

                        decoration: BoxDecoration (
                            //border: Border.all(color: Colors.black,width: 1),
                            //borderRadius: new BorderRadius.all(new Radius.circular(8)),
                            color: Colors.white   ),   width: 95.w,   height:5.h,
                        //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                        //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                      ).pSymmetric(v: 2.h,h: 3.3.w),
                      Row(
                        children: [
                          Container(
                            child: Theme(
                              data: Theme.of(context).copyWith(splashColor: Colors.white),
                              child: TextFormField(
                                validator: _addMemberController.validaterelation,
                                controller: _addMemberController.relation,

                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 1.0.h),
                                  hintText: 'Enter Relation',

                                  labelStyle: TextStyle(

                                  ),


                                ),
                              ),
                            ),

                            decoration: BoxDecoration (
                              //border: Border.all(color: Colors.black,width: 1),
                              //borderRadius: new BorderRadius.all(new Radius.circular(8)),
                                color: Colors.white   ),   width: 43.w,   height:5.h,
                            //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                            //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                          ).pSymmetric(v: 2.h,h: 3.3.w),
                          Container(
                            child: Theme(
                              data: Theme.of(context).copyWith(splashColor: Colors.white),
                              child: TextFormField(
                                controller: _addMemberController.DOB,
                                validator: _addMemberController.validateDOB,

                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(vertical: 1.0.h),
                                  hintText: 'Date of Birth',

                                  //from here date pickker code............
                                  suffixIcon: Icon(Icons.calendar_today_outlined,color: Colors.black,).onTap(()  {

                                    _addMemberController.selectDate(context);


                                  }),

                                  labelStyle: TextStyle(

                                  ),


                                ),
                              ),
                            ),

                            decoration: BoxDecoration (
                              //border: Border.all(color: Colors.black,width: 1),
                              //borderRadius: new BorderRadius.all(new Radius.circular(8)),
                                color: Colors.white   ),   width: 43.w,   height:5.h,
                            //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                            //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                          ).pSymmetric(v: 2.h,h: 3.3.w),
                        ],
                      ),
                      Obx(() => RadioListTile(
                        value: genderController.genderTypes[0],
                        groupValue: genderController.genderMethod.value,
                        onChanged: (val) {
                          genderController.genderMethod.value = val as String;
                        },
                        title:Text("Male",
                          style: TextStyle(
                              color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),

                      ),
                      ),
                      Obx(() => RadioListTile(
                        value: genderController.genderTypes[1],
                        groupValue: genderController.genderMethod.value,
                        onChanged: (val) {
                          genderController.genderMethod.value = val as String;
                        },
                        title:Text("Female",
                          style: TextStyle(
                              color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),

                      ),
                      ),
                      Container(
                        child: Theme(
                          data: Theme.of(context).copyWith(splashColor: Colors.white),
                          child: TextFormField(
                            validator: _addMemberController.validateNumber,
                            controller: _addMemberController.number,

                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 1.0.h),
                              hintText: 'Mobile Number',

                              labelStyle: TextStyle(

                              ),


                            ),
                          ),
                        ),

                        decoration: BoxDecoration (
                          //border: Border.all(color: Colors.black,width: 1),
                          //borderRadius: new BorderRadius.all(new Radius.circular(8)),
                            color: Colors.white   ),   width: 95.w,   height:5.h,
                        //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                        //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                      ).pSymmetric(v: 2.h,h: 3.3.w),
                      Container(
                        child: Theme(
                          data: Theme.of(context).copyWith(splashColor: Colors.white),
                          child: TextFormField(

                            controller: _addMemberController.email,
                            validator: _addMemberController.validateEmail,

                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 1.0.h),
                              hintText: 'Email',

                              labelStyle: TextStyle(

                              ),


                            ),
                          ),
                        ),

                        decoration: BoxDecoration (
                          //border: Border.all(color: Colors.black,width: 1),
                          //borderRadius: new BorderRadius.all(new Radius.circular(8)),
                            color: Colors.white   ),   width: 95.w,   height:5.h,
                        //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                        //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                      ).pSymmetric(v: 2.h,h: 3.3.w),


                    ],
                  ),
                ),
              ),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 4.h,
                    width: 23.w,
                    color: Colors.white60,
                    child:Center(
                      child: Text('Cancel',style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,

                      ),),
                    ),
                  ).p12(),
                  Container(
                    height: 4.h,
                    width: 23.w,
                    color: buttonColor,
                    child:Center(
                      child: Text('Save',style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,

                      ),),
                    ),
                  ).p12().onTap(() {


                    _addMemberController.checkForm(package);


                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
