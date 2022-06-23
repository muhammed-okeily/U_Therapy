import 'dart:ui';

import 'package:flutter/material.dart';


import '../../modules/more & edit/more.dart';
import '../../shared/components/components.dart';
import '../blogs/blogs.dart';
import '../tests/tests.dart';
import '../therapist/therpaist.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> screens = [
     therapist(),
    blogs(),
    const tests(),
     const More(),
  ];
  List<String> titles = [
    'Therapists',
    'Blogs',
    'Tests',
    'More',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         leading: IconButton(
            icon: Icon(
                Icons.settings
            ),

            onPressed: (){navigateto(context, More());},),
          title: Row( mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("محمد"),
            ],
          ),

          backgroundColor: const Color(0xFF012A4A),
        ),
        body:screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 20.0,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items:  const [
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                backgroundColor: Colors.indigo,
                label: 'المعالجون',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.comment,
                ),
                label: 'المدونات',
              ),
              BottomNavigationBarItem(

                icon: Icon(
                  Icons.question_answer_outlined,
                ),
                label: 'الاختبارات',
              ),
            ]));
  }
}
