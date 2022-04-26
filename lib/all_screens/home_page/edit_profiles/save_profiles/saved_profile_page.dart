import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/all_screens/home_page/edit_profiles/save_profiles/save_profile_controller.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SavedProfile extends StatelessWidget {
  SavedProfile({Key? key}) : super(key: key);

  GetUserController _getUserController = Get.put(GetUserController());

  List<String> text = [
    'Count steps',
    'Log Sugar',
    'Track Weight',
    'Blood Pressure',
    'Track Medical',
    'Doctor'
  ];
  List<String> image = [
    'lib/assets/step.png',
    'lib/assets/diabetes-test.png',
    'lib/assets/weight-scale.png',
    'lib/assets/blood-pressure-gauge.png',
    'lib/assets/medicine.png',
    'lib/assets/doctor (2).png'
  ];
  var data = [
    {
      'icon': 'phone',
      'title': 'Mobile',
      'subTitle': '0123456789'
    }
    ,
    {
      'icon': 'Email',
      'title': 'Email',
      'subTitle': 'john@gmail.com'
    },
    {
      'icon': 'Message',
      'title': 'Message',
      'subTitle': '0123456789'
    },
    {
      'icon': 'phone',
      'title': 'App Name',
      'subTitle': '0123456789'
    },
  ];
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
        title: 'Saved Profile'.text.center.bold.size(19).black.make(),
      ),

      body: Obx(() => _getUserController.isLoading.value
          ? CircularProgressIndicator().centered()
          :

      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 20.h,
                  width: 100.w,
                  color: buttonColor,
                ),

                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      15.h.heightBox,
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Container(
                              height: 7.h,
                              width: 7.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(189, 224, 254, 1),
                                shape: BoxShape.circle,
                              ),
                            child: Icon(FontAwesomeIcons.userAlt),

                          ).p16(),
                        ),
                      ),
                      Text('John Deo',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),),
                      Text('San francisco, CA',style: TextStyle(
                        fontWeight: FontWeight.bold,color: Colors.grey,
                        fontSize: 11,
                      ),),

                      2.h.heightBox,
                      SizedBox(
                        height: 100.h,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 3 / 2,
                                  crossAxisSpacing: 6,
                                  mainAxisSpacing: 50,
                                mainAxisExtent: 160,
                              ),
                              itemCount: _getUserController.getuser.length,
                              itemBuilder: (BuildContext ctx, index) {
                                return Container(
                                  height: 12.h,
                                  width: 25.w,
                                  decoration: BoxDecoration(
                                    color: buttonColor,
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Container(
                                          height: 10.h,
                                          width: 10.w,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(Icons.phone),
                                        ),
                                      ).pOnly(top: 1.h),
                                      1.h.heightBox,
                                      Text(_getUserController.getuser[index].name!,style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),),
                                      1.h.heightBox,
                                      Text(_getUserController.getuser[index].number!,style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),),
                                    ],
                                  ),
                                ).pSymmetric(h: 1.w);
                              }),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),


          ],
        ),
        ),
      ),
    );
  }
}
