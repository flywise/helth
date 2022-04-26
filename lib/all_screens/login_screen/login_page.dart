import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heath/all_screens/home_page/home_screen.dart';
import 'package:heath/all_screens/login_screen/verify_number_page.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.white,
          child: Column(
            children: [
              6.h.heightBox,
              Container(
                  height: 40.h,
                  child: Image.asset('lib/assets/welcome_image.png')),
              27.h.heightBox,
              Container(
                height: 27.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: themeColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to Healthcare',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 17.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Sign in to continue',
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    2.h.heightBox,
                    Container(
                      height: 6.5.h,
                      width: 94.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                                  height: 5.h,
                                  child:
                                      Image.asset('lib/assets/mobilelogo.png'))
                              .pOnly(left: 5.w),
                          Text(
                            'Log In/Sign Up With Mobile',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11.sp,
                              color: Colors.grey.shade800,
                            ),
                          ).pOnly(right: 15.w)
                        ],
                      ),
                    ).onTap(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }),

                    // 2.h.heightBox,
                    // Container(
                    //   height: 6.5.h,
                    //   width: 94.w,
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(10)
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Container(
                    //           height: 5.h,
                    //           child: Image.asset('lib/assets/google logo.png')).pOnly(left: 5.w),
                    //
                    //       Text('Log In/Sign Up With Google',
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 11.sp,
                    //           color: Colors.grey.shade800,
                    //         ),).pOnly(right: 19.w)
                    //     ],
                    //
                    //   ),
                    // ),
                    //
                    // 2.h.heightBox,
                    // Container(
                    //   height: 6.5.h,
                    //   width: 94.w,
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(10)
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Container(
                    //           height: 5.h,
                    //           child: Image.asset('lib/assets/mobilelogo.png')).pOnly(left: 5.w),
                    //
                    //       Text('Log In/Sign Up With Mobile',
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 11.sp,
                    //           color: Colors.grey.shade800,
                    //         ),).pOnly(right: 19.1.w)
                    //     ],
                    //
                    //   ),
                    // ),
                    4.h.heightBox,

                    Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: 2.h,
                                    child: Image.asset(
                                        'lib/assets/facebooklogo.png')),
                                Text(
                                  'Log In/Sign Up With facebook',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 6.sp,
                                    color: Colors.grey.shade800,
                                  ),
                                )
                              ],
                            ),
                            1.3.w.widthBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    height: 2.h,
                                    child: Image.asset(
                                        'lib/assets/google logo.png')),
                                Text(
                                  'Log In/Sign Up With google',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 6.sp,
                                    color: Colors.grey.shade800,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ).pOnly(left: 15.w),
                      ],
                    ),
                  ],                                         
                ).pSymmetric(h: 4.w, v: 2.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
