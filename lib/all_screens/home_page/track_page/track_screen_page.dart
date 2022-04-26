import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'health_tracker_page.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({Key? key}) : super(key: key);

  @override
  _TrackPageState createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  List<String> text = ['Count steps','Log Sugar','Track Weight','Blood Pressure','Track Medical','Doctor'];
  List<String> text2 = ['+1234567855','john@gmail.com','+123456789234','+123 456 789 234','Track Medical','Doctor'];
  List<String> image = ['lib/assets/step.png','lib/assets/diabetes-test.png','lib/assets/weight-scale.png',
  'lib/assets/blood-pressure-gauge.png','lib/assets/medicine.png','lib/assets/doctor (2).png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [                            
              2.h.heightBox,
              SizedBox(
                height: 95.h,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 6,
                          mainAxisExtent: 150,
                          mainAxisSpacing: 10),
                      itemCount: 6,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          height: 12.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            color: themeColor,
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Column(
                            children: [
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> HealthTracker()));
                                  },
                                  child: Container(
                                    height: 11.5.h,
                                    width: 23.w,
                                    decoration: BoxDecoration(
                                      color: buttonColor,
                                      image: DecorationImage(
                                          image:  AssetImage(image[index]),
                                          fit: BoxFit.fill,
                                    ),
                                      shape: BoxShape.circle,
                                    ),

                                  ),
                                ),
                              ).pOnly(top: 1.h),
                              1.h.heightBox,
                               Text(text[index],style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
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
      ),
    );
  }
}
