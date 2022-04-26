import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:heath/all_screens/home_page/profile_pages/rating_review_pages/rating_review2_controller/get_rating_review_controller.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

class RatingReview extends StatelessWidget {
   RatingReview({Key? key}) : super(key: key);

   GetRratingReviewController _getRratingReviewController = Get.put(GetRratingReviewController());
   //MyReportController _myReportController = Get.put(MyReportController());
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
        title: 'Rating & Reviews'.text.center.bold.size(19).black.make(),
      ),
      body:Obx(()=> _getRratingReviewController.isLoading.value
    ? CircularProgressIndicator().centered()
        :

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Rating & Reviews',style: TextStyle(
            fontSize: 16,
            //fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),).p16(),

          SizedBox(
            height: 60.h,

            child: ListView.builder(
                itemCount: _getRratingReviewController.viewrating.length,
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

                          Column(
                            children: [
                              //Image.network(_myReportController.getReports[index].report),
                              Text(_getRratingReviewController.viewrating[index].review!
                            //_packagesController.getpackage.getpackage.description!,
                                //_getRratingReviewController.viewrating[index].review
                                ,style: TextStyle(
                                  fontSize: 11,
                                  //fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),),
                              VxRating(
                                onRatingUpdate: (value) {
                                  //ratingReviewController.rating= value;
                                },
                                value: _getRratingReviewController.viewrating[index].rating!.toDouble(),
                                count: 5,
                                selectionColor: Colors.black,
                                size: 20,
                              ).pOnly(left: 35.w),
                            ],
                          ),


                        ],

                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ],
                  );

                }
            ),
          ),
        ],

      ),),
    );
  }
}
