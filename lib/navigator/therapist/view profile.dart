// ignore_for_file: file_names
import 'package:cheer/models/doctor/doctor.dart';
import 'package:cheer/navigator/therapist/reviews.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:cheer/navigator/therapist/booking.dart';
import 'calender.dart';
import 'overView.dart';

class DoctorScreen extends StatefulWidget {
   Doctor doctor;
  DoctorScreen({Key? key, required this.doctor}) : super(key: key);

  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  final DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF012A4A),
        title: Text(" ${widget.doctor.firstName} ", textDirection: TextDirection.rtl,
            textAlign: TextAlign.start),
      ),
      body: Container(
        color:   Color(0xFFD2EBED),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 70,
                  foregroundImage: NetworkImage(widget.doctor.image),
                ),
              ),
              Text("الدكتور : " +
                  widget.doctor.firstName +
                  " " +
                  widget.doctor.lastName, textDirection: TextDirection.rtl,),
              Text(widget.doctor.company.title),
              const ListTile(
                trailing: Text(
                  "الدولة :", textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                title: Text(
                  "مصر", textDirection: TextDirection.rtl,
                ),

              ),
              ListTile(
                trailing: const Text(
                  "انضم:", textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                title:   Text(
                  (widget.doctor.weight / 20).floor().toString() + " العمر", textDirection: TextDirection.rtl,
                ),

              ),
              ListTile(
                trailing: const Text(
                  "التركيز الأساسي :", textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                title:  Text(
                  widget.doctor.company.department, textDirection: TextDirection.rtl,
                ),

              ),
              ListTile(
                trailing: const Text(
                  " التخصصات:",textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                title:  Text(
                  widget.doctor.company.title, textDirection: TextDirection.rtl,
                ),

              ),
              ListTile(
                trailing: const Text(
                  "العنوان:",textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                title:  Text(
                  widget.doctor.address.address +
                      ", " +
                      widget.doctor.address.city,textDirection: TextDirection.rtl,
                ),

              ),



              const SizedBox(
                height: 30,
              ),
              ListTile(
                trailing:const Text(
                  "التقيم:",textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                title:    SizedBox(
                  width: 50.0,
                  height: 30.0,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF012A4A),
                      ),
                      shape: MaterialStateProperty.all(

                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: const Radius.circular(
                              30,
                            ),
                            bottomLeft: const Radius.circular(
                              30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    icon: const Icon(Icons.more_horiz),
                    label: const Text("مشاهدة المزيد",textDirection: TextDirection.rtl,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Reviews(widget.doctor.firstName),
                        ),
                      );
                    },
                  ),
                ),

              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                trailing: const Text(
                  "نظرة عامه :",textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                title:    SizedBox(
                  width: 50.0,
                  height: 30.0,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF012A4A),
                      ),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: const Radius.circular(

                              30,
                            ),
                            bottomLeft: const Radius.circular(
                              30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    icon: const Icon(Icons.more_horiz),
                    label: const Text("مشاهدة المزيد",textDirection: TextDirection.rtl,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => OverView(),
                        ),
                      );
                    },
                  ),
                ),

              ),

              // TableCalendar(
              //   firstDay: kFirstDay,
              //   lastDay: kLastDay,
              //   focusedDay: _focusedDay,
              //   calendarFormat: _calendarFormat,
              //   selectedDayPredicate: (day) {
              //     // Use `selectedDayPredicate` to determine which day is currently selected.
              //     // If this returns true, then `day` will be marked as selected.
              //
              //     // Using `isSameDay` is recommended to disregard
              //     // the time-part of compared DateTime objects.
              //     return isSameDay(_selectedDay, day);
              //   },
              //   onDaySelected: (selectedDay, focusedDay) {
              //     if (!isSameDay(_selectedDay, selectedDay)) {
              //       // Call `setState()` when updating the selected day
              //       setState(() {
              //         _selectedDay = selectedDay;
              //         _focusedDay = focusedDay;
              //       });
              //     }
              //   },
              //   onFormatChanged: (format) {
              //     if (_calendarFormat != format) {
              //       // Call `setState()` when updating calendar format
              //       setState(() {
              //         _calendarFormat = format;
              //       });
              //     }
              //   },
              //   onPageChanged: (focusedDay) {
              //     // No need to call `setState()` here
              //     _focusedDay = focusedDay;
              //   },
              // ),

              const SizedBox(
                height: 70,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:ElevatedButton(
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(
                        Size.fromHeight(20),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              30,
                            ),
                            bottomLeft: Radius.circular(
                              30,
                            ),
                          ),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(

                        Color(0xFF012A4A),
                      ),
                      // foregroundColor: MaterialStateProperty.all(
                      //
                      // ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:   0.3),
                      child: Text(
                        "حجز",
                        style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.transparent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Booking(),
                          ));
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
