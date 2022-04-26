import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heath/constant_file/constant_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
        title: 'History'.text.center.bold.size(19).black.make(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('History',style: TextStyle(
            fontSize: 19,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),).p16(),

          2.h.heightBox,

          Text('There are many variations of passages of Lorem '
              'Ipsum available, but the majority have suffered alteration'
              ' in some form, by injected humour, or randomised words which dont'
              ' look even slightly believable. If you are going to use a passage'
              ' of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. '
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary,'
          ' making this the first true generator on the Internet.',
            style: TextStyle(
            fontSize: 12,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),).p16(),




        ],
      ),
    );
  }
}