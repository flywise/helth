import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heath/all_screens/home_page/home_page_details/notifications_page.dart';
import 'package:heath/all_screens/home_page/profile_pages/profile_page.dart';
import 'package:heath/all_screens/home_page/track_page/track_screen_page.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:heath/drawer_screen/drawer_page_list.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';

import 'cart_page.dart';
import 'home_page_details/home_page_detail.dart';
import 'order_screen_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  GlobalKey <ScaffoldState> _key= GlobalKey();
  final pages = [
     HomePageDetails(),
    const Page2(),
    const TrackPage(),
    const OrderPage(),
    const ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        shadowColor:themeColor,
        backgroundColor: Colors.white,
        leadingWidth: 28.w,
        automaticallyImplyLeading: false,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Icons.menu,color: Colors.black,).onTap(() {
                _key.currentState!.openDrawer();
              }),
            ),
            Icon(Icons.location_on_sharp,color: Colors.black,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('201029',style: TextStyle(
                  fontSize: 8,color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                Text('Delhi,Delhi',style: TextStyle(
                  fontSize: 8,color: Colors.black,fontWeight: FontWeight.bold,
                ),),
              ],
            ).pOnly(top: 2.3.h),
            //Icon(Icons.location_on_sharp),
          ],
        ),
        title: Container(
              height: 7.h,
                width: 16.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Image.asset('lib/assets/logo.jpg',fit: BoxFit.fill,)),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [

                Icon(Icons.notifications_active,color: Colors.black,).onTap(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
                }),
                1.w.widthBox,
                Icon(Icons.shopping_cart_rounded,color: Colors.black,).onTap(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
                }),
              ],
            ),
          ),
        ],
      ),
      drawer: OpenDrawer(),
      body:pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: themeColor,width: 2),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(1),
          topRight: Radius.circular(1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              pageIndex == 0
                  ? Container(
                height: 5.h,
                width: 4.h,
                child: Image.asset('lib/assets/stethoscope.png'),
              )
                  : Container(
                height: 5.h,
                width: 4.h,
                child: Image.asset('lib/assets/stethoscope.png'),
              ),
              'Home'.text.black.make(),
            ],
          ).onInkTap(() {
            setState(() {
              pageIndex = 0;
            });
          }),

          Column(
            children: [
              pageIndex == 1
                  ? Container(
                height: 5.h,
                width: 4.h,
                child: Image.asset('lib/assets/phone-call.png'),
              )
                  : Container(
                height: 5.h,
                width: 4.h,
                child: Image.asset('lib/assets/phone-call.png'),
              ),
              'Call'.text.black.make(),
            ],
          ).onInkTap(() {
            setState(() {
              pageIndex = 1;
            });
          }),

          Column(
            children: [
              pageIndex == 2
                  ? Container(
                height: 5.h,
                width: 4.h,
                child: Image.asset('lib/assets/heart-beat.png'),
              )
                  : Container(
                height: 5.h,
                width: 4.h,
                child: Image.asset('lib/assets/heart-beat.png'),
              ),
              'Track'.text.black.make(),
            ],
          ).onInkTap(() {
            setState(() {
              pageIndex = 2;
            });
          }),

          Column(
            children: [
              pageIndex == 3
                  ? Container(
                height: 5.h,
                width: 4.h,
                child: Image.asset('lib/assets/landing-page.png'),
              )
                  : Container(
                height: 5.h,
                width: 4.h,
                child: Image.asset('lib/assets/landing-page.png'),
              ),
              'Order'.text.black.make(),
            ],
          ).onInkTap(() {
            setState(() {
              pageIndex = 3;
            });
          }),

          Column(
            children: [
              pageIndex == 4
                  ? Container(
                height: 5.h,
                width: 4.h,
                child: Image.asset('lib/assets/user.png'),
              )
                  : Container(
                height: 5.h,
                width: 4.h,
                child: Image.asset('lib/assets/user.png'),
              ),
              'Profile'.text.black.make(),
            ],
          ).onInkTap(() {
            setState(() {
              pageIndex = 4;
            });
          }),
          // TextButton(onPressed: () {
          //   setState(() {
          //     pageIndex = 1;
          //   });
          // },
          //     child: Text('Home')
          // ),

        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 1",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 5",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
