// ignore_for_file: file_names,prefer_const_constructors
import 'package:cheer/models/doctor/doctor.dart';
import 'package:cheer/navigator/therapist/booking.dart';

import 'package:cheer/navigator/therapist/calender.dart';
import 'package:cheer/navigator/therapist/view%20profile.dart';
import 'package:flutter/material.dart';

class DoctorWidget extends StatelessWidget {
  final Doctor doctor;
  const DoctorWidget({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Card(
        color:  const Color(0xFF012A4A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        child: SizedBox(
          width: width * 0.9,
          height: height * 0.28,
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: InkWell(onTap: () {
        Navigator.push(
        context,
        MaterialPageRoute(
        builder: (_) => DoctorScreen(doctor: doctor,),
        ),
        );
        },
                  child: Container(

                    height: height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      color: Colors.yellowAccent,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(4.0),
                      child: Text(
                        "الملف الشخصي",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF012A4A),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),),

                  title: Center(
                    child: Text(
                    " " + doctor.lastName + doctor.firstName+" : الدكتور  " ,

                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color:  Color(0xFFD2EBED),
                        fontSize: 13,
                      ),
                    ),
                  ),

                  isThreeLine: true,

                  subtitle: Column(

                    children: [
                      Text(
                        doctor.company.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            (doctor.weight / 15).floor().toString(),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Wrap(
                            children: List<Widget>.generate(
                             5,
                              (index) => Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing:
                    Image.network(
                      doctor.image,
                      height: height * 0.073,
                    ),


                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(
                      text: "   التخصص :   ",
                      style: TextStyle(
                          color:  const Color(0xFFD2EBED),
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                      ),
                      children: [
                        TextSpan(
                          text: "الإكتئاب , القلق",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: RichText(
                      textAlign: TextAlign.right,
                      text: TextSpan(
                        text: "الجلسة : ",
                        style: TextStyle(
                          color:  const Color(0xFFD2EBED),
                          fontWeight: FontWeight.bold,
                         fontSize: 14,
                        ),
                        children: [
                          TextSpan(
                            text: "${doctor.height} جنيه مصري",
                            style: TextStyle(


                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(
                    Size.fromHeight(20),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      side: BorderSide(
                        color:   const Color(0xFFD2EBED),
                        width: 2,
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(

                    Color(0xFFD2EBED),
                  ),
                  // foregroundColor: MaterialStateProperty.all(
                  //
                  // ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.3),
                  child: Text(
                    "حجز",
                    style: TextStyle(
                      color: Colors.black,
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
            ],
          ),
        ),
      ),
    );
  }
}
/*

*/
/*

        */
