import 'package:heath/constant_file/constant_colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';

class Article extends StatefulWidget {
  const Article({Key? key}) : super(key: key);

  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
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
        title: 'Article'.text.center.bold.size(19).black.make(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Articles',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),),

              2.h.heightBox,

              const Text('It is a long established fact'
                  ' that a reader will be distracted by the '
                  'readable content of a page when looking at its'
                  ' layout. The point of using Lorem Ipsum is that '
                  'it has a more-or-less normal distribution of letters, '
                  'as opposed to using , making it look like readable'
                  ' English. Many desktop publishing packages and web page '
                  'editors now use Lorem Ipsum as their '
              'default model text, and a search for  will uncover'
                  ' many web sites still in their infancy. '
                ,style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),),

              2.h.heightBox,
              const Text('It is a long established fact'
                  ' that a reader will be distracted by the '
                  'readable content of a page when looking at its'
                  ' layout. The point of using Lorem Ipsum is that '
                  'it has a more-or-less normal distribution of letters, '
                  'as opposed to using , making it look like readable'
                  ' English. Many desktop publishing packages and web page '
                  'editors now use Lorem Ipsum as their '
                  'default model text, and a search for  will uncover'
                  ' many web sites still in their infancy. '
                ,style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),),

              2.h.heightBox,

              const Text('It is a long established fact'
                  ' that a reader will be distracted by the '
                  'readable content of a page when looking at its'
                  ' layout. The point of using Lorem Ipsum is that '
                  'it has a more-or-less normal distribution of letters, '
                  'as opposed to using , making it look like readable'
                  ' English. Many desktop publishing packages and web page '
                  'editors now use Lorem Ipsum as their '
                  'default model text, and a search for  will uncover'
                  ' many web sites still in their infancy. '
                ,style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),),

              2.h.heightBox,

              const Text('It is a long established fact'
                  ' that a reader will be distracted by the '
                  'readable content of a page when looking at its'
                  ' layout. The point of using Lorem Ipsum is that '
                  'it has a more-or-less normal distribution of letters, '
                  'as opposed to using , making it look like readable'
                  ' English. Many desktop publishing packages and web page '
                  'editors now use Lorem Ipsum as their '
                  'default model text, and a search for  will uncover'
                  ' many web sites still in their infancy. '
                ,style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),),

              2.h.heightBox,

              const Text('It is a long established fact'
                  ' that a reader will be distracted by the '
                  'readable content of a page when looking at its'
                  ' layout. The point of using Lorem Ipsum is that '
                  'it has a more-or-less normal distribution of letters, '
                  'as opposed to using , making it look like readable'
                  ' English. Many desktop publishing packages and web page '
                  'editors now use Lorem Ipsum as their '
                  'default model text, and a search for  will uncover'
                  ' many web sites still in their infancy. '
                ,style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),),
            ],
          ).p12(),
        ),
      ),
    );
  }
}
