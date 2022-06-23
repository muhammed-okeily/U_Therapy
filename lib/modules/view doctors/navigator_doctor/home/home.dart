import 'dart:ui';


import 'package:cheer/modules/view%20doctors/navigator_doctor/blogs/booked_doct.dart';
import 'package:cheer/modules/view%20doctors/navigator_doctor/more%20&%20edit_doc/more.dart';
import 'package:cheer/modules/view%20doctors/navigator_doctor/tests/profile_doct.dart';
import 'package:cheer/shared/components/components.dart';
import 'package:flutter/material.dart';


class Home_doc extends StatefulWidget {
  const Home_doc({Key? key}) : super(key: key);

  @override
  State<Home_doc> createState() => _HomeState();
}

class _HomeState extends State<Home_doc> {
  int currentIndex = 1;
  List<Widget> screens = [



    More_doc(),

    booked_docts(),
    profile_doct(),

  ];
  List<String> titles = [
    'profile',
    'Booked',
    'More',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
            items: [
              BottomNavigationBarItem(

                icon: Icon(
                  Icons.more_vert,
                ),
                label: 'المزيد',
              ),



              BottomNavigationBarItem(
                icon: Icon(Icons.book_online),
                backgroundColor: Colors.indigo,
                label: 'الحجز',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.people_alt_outlined,
                ),
                label: 'الصفحة الشخصية',
              ),

            ]));
  }
}
