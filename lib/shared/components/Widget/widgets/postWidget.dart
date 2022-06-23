// ignore_for_file: file_names,prefer_const_constructors

import 'package:cheer/layout/utils/utils.dart';
import 'package:cheer/models/doctor/post.dart';
import 'package:cheer/navigator/therapist/postScreen.dart';
import 'package:flutter/material.dart';



class PostWidget extends StatelessWidget {
   Post post;
  final int index;
   PostWidget({
    Key? key,
    required this.post,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PostScreen(
                post: post,
                index: index,
              ),
            ),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          color:  const Color(0xFF012A4A),
          child: Column(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.fitWidth,
                    width: width * 0.95,
                    height: height * 0.2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  names[index],
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color:   Colors.white,
                    fontSize:11,
                    fontWeight: FontWeight.bold,
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
