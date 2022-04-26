import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/all_screens/home_page/user_comments/user_comment_controller.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';


class UserComments extends StatelessWidget {
   UserComments({Key? key}) : super(key: key);
   UserCommentController _userCommentController = Get.put(UserCommentController());



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
        title: 'User Comments'.text.center.bold.size(19).black.make(),
      ),
      body:Obx(() => _userCommentController.isLoading.value
    ? CircularProgressIndicator().centered()
        :

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('User Comments',style: TextStyle(
            fontSize: 16,
            //fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),).p16(),

          SizedBox(
            height: 60.h,

            child: ListView.builder(
                itemCount: _userCommentController.viewcomment.viewcomment.length,
                itemBuilder: (BuildContext context,int index){
                  return Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.account_circle_outlined,size: 33,),
                              Text('Nick Jones',style: TextStyle(
                                fontSize: 12,
                                //fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),).p16(),

                            ],

                          ),
                          3.w.widthBox,

                          Text(_userCommentController.viewcomment.viewcomment[index].comment!
                            ,style: TextStyle(
                            fontSize: 11,
                            //fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),),


                        ],

                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ],
                  ).px8();

                }
            ),
          ),

        ],
      ),
      ),

    );
  }
}
