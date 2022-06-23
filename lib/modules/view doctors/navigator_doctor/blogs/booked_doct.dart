

import 'package:cheer/layout/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';





// ignore: camel_case_types
class booked_docts extends StatefulWidget {
  booked_docts({Key? key}) : super(key: key);

  @override
  _ClenderState createState() => _ClenderState();
}

class _ClenderState extends State<booked_docts> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(

        color:  const Color(0xFFD2EBED),

        padding: EdgeInsets.only(
          left: 11,
          right: 11,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [





            Expanded(
              child: GridView.builder(


                  padding: EdgeInsets.all(20.0),
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(

                    crossAxisCount: 4,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 15.0,


                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 100,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      padding: EdgeInsets.only(
                        top: 9,
                        left: 9,
                      ),
                      // alignment: Alignment.center,
                      child: StreamBuilder<Object>(
                        stream: null,
                        builder: (context, snapshot) {
                          return Column(

                            children: [
                              Text(
                                "اليوم",textDirection: TextDirection.rtl,
                                style: TextStyle(fontSize: 20, color: Colors.black),
                              ),

                              Icon(Icons.access_time_filled_sharp,
                                  color: Colors.lightBlueAccent, size: 26),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("60 دقيقة",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.lightBlueAccent)),
                              SizedBox(
                                height: 8,
                              ),

                              Text(
                                "12:30 ص",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                            ],
                          );
                        }
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15)),
                    );
                  }),
            ),

          ],
        ),
      ),

    );
  }
}
