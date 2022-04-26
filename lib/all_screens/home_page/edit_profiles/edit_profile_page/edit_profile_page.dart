import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/all_screens/home_page/edit_profiles/save_profiles/saved_profile_page.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'edit_profile_controller.dart';

class EditProfile extends StatelessWidget {
  EditProfile({Key? key}) : super(key: key);

  EditProfileController _editProfileController = Get.put (EditProfileController());

  bool obscuretext = true;

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
        title: 'Edit Profile'.text.center.bold.size(19).black.make(),
      ),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _editProfileController.userform,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('Edit Profile',style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),).p16(),

                2.h.heightBox,
                SizedBox(
                  height: 65.h,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 20.h,
                        width: 100.w,
                        color: Color.fromRGBO(189, 224, 254, 1),
                        //from here change + sign in to circle avtar
                        child:Obx(()=>

                        Container(
                          height:15.h,
                          width: 15.w,
                          child:_editProfileController.image.value.path==''
                            ?
                          CircleAvatar(
                              radius: (10),
                              backgroundColor: buttonColor,
                              child: ClipRRect(
                                borderRadius:BorderRadius.circular(30),
                                child: Image.network(
                                  'https://www.pngplay.'
                                      'com/wp-content/uploads/7/Note-Logo-'
                                      'Transparent-Background.png',height: 60,width: 60,
                                ),
                              )
                          )
                              : Image.file(_editProfileController.image.value),
                        ).onTap(() async {
                          _editProfileController.pickImage(ImageSource.gallery);

                        })),

                        // CircleAvatar(
                        //   radius: 9,
                        //   child: Image.network(
                        //     'https://www.pngplay.'
                        //         'com/wp-content/uploads/7/Note-Logo-'
                        //         'Transparent-Background.png',height: 10,width: 10,
                        //   ),
                        // ),

                        //Icon(FontAwesomeIcons.plus,color: buttonColor,),
                      ),
                      Positioned(
                        top: 18.h,
                        left: 35,
                        right: 35,
                        child:Container(
                          height: 45.h,
                          width: 80.w,
                          color: Colors.white,

                          child: Column(
                            children: [
                              3.h.heightBox,
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: TextFormField(
                                  controller: _editProfileController.name,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,

                                    //border: UnderlineInputBorder(),
                                    //labelText: 'info@gmail.com',
                                    hintText: 'John Deo',
                                    prefixIcon: Icon(FontAwesomeIcons.userAlt,
                                      color: Colors.black,size: 2.h,),

                                  ),

                                ),
                              ),
                              2.h.heightBox,

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: TextFormField(
                                  controller: _editProfileController.location,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    //labelText: 'info@gmail.com',
                                    hintText: 'San franisco.CA',
                                    prefixIcon: Icon(Icons.location_on_sharp,
                                      color: Colors.black,size: 3.h,),

                                  ),

                                ),
                              ),
                              2.h.heightBox,

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: TextFormField(
                                  controller: _editProfileController.email,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    //border: UnderlineInputBorder(),
                                    //labelText: 'info@gmail.com',
                                    hintText: 'johndeco@gmail.com',
                                    prefixIcon: Icon(Icons.email,
                                      color: Colors.black,size: 3.h,),

                                  ),

                                ),
                              ),
                              2.h.heightBox,

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: TextFormField(
                                  controller: _editProfileController.mobile,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    //border: UnderlineInputBorder(),
                                    //labelText: 'info@gmail.com',
                                    hintText: '+0200300500',
                                    prefixIcon: Icon(Icons.phone,
                                      color: Colors.black,size: 3.h,),

                                  ),

                                ),
                              ),
                              2.h.heightBox,

                              // Padding(
                              //   padding: EdgeInsets.symmetric(horizontal: 10.w),
                              //   child: TextFormField(
                              //     //textAlign: TextAlign.left,
                              //     controller: password,
                              //     obscureText: obscuretext,
                              //     decoration: InputDecoration(
                              //       //contentPadding: EdgeInsets.symmetric(vertical: 10),
                              //       //contentPadding: EdgeInsets.all(20.0),
                              //
                              //       border: InputBorder.none,
                              //       //border: UnderlineInputBorder(),
                              //       //labelText: 'info@gmail.com',
                              //       hintText: '********',
                              //       prefixIcon: Icon(Icons.lock_rounded,
                              //         color: Colors.black,size: 3.h,),
                              //
                              //     ),
                              //
                              //   ),
                              // ),

                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                InkWell(
                  onTap: () {
                    _editProfileController.callEditProfileApi();

                  },
                  child: Container(
                    height: 6.h,
                    width: 100.w,
                    color: buttonColor,
                    child: Center(child: Text('SAVE CHANGE',style: TextStyle(
                      color: Colors.white,
                    ),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
