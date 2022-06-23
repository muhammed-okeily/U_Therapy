// ignore_for_file: file_names, prefer_const_constructors

import 'package:cheer/layout/utils/utils.dart';
import 'package:cheer/models/doctor/post.dart';
import 'package:flutter/material.dart';



class PostScreen extends StatefulWidget {
   Post post;

  final int index;
  PostScreen({
    Key? key,
    required this.post,
    required this.index,
  }) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  // late PageController _pageController;

  @override
  void initState() {
    super.initState();
    // _pageController = PageController(viewportFraction: 0.85);
  }

  @override
  Widget build(BuildContext context) {
    // final Post _post = widget.post;

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF012A4A),
        title: Text(
          names[widget.index],
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.justify,
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xFFD2EBED),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: height * 0.3,
                // child: PageView.builder(
                //   controller: _pageController,
                //   pageSnapping: true,
                //   scrollDirection: Axis.horizontal,
                //   itemCount: _post.images.length,
                //   itemBuilder: (context, index) =>
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Image.asset(
                        images[widget.index],
                        fit: BoxFit.fitWidth,
                        width: width * 0.95,
                      ),
                    ),
                  ),
                ),
              ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  contents[widget.index],
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                    fontSize:16.0,

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
