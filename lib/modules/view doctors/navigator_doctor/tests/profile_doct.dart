

import 'package:cheer/navigator/therapist/edit_profile.dart';
import 'package:flutter/material.dart';

import 'edit.dart';




// ignore: camel_case_types
class profile_doct extends StatelessWidget {
  profile_doct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFD2EBED),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/doctor.jpeg",
                            fit: BoxFit.cover,
                            height: 140,
                            width: 140,
                          ),
                        )),
                  ),
                ),
                Center(
                  child: Text(
                    " دكتور أميرة حسن",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Center(

                  child: Text(

                    "حول عن", textAlign: TextAlign.center
                    ,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "أنا مستشار طبي محترف مرخص في ولاية كانساس ولدي أكثر من 27 عامًا.", textDirection: TextDirection.rtl,textAlign: TextAlign.right,),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    "تفاصيل الملف الشخصي",textAlign: TextAlign.right, textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                buildRow(name: "   : الأسم بالكامل  ", desc:' أميرة حسن ' ,),
                buildRow(name:'  :النوع   ' , desc: "  أنثى "),
                buildRow(name: ":  المهنة  ", desc: 'طبيب نفسي'),
                buildRow(name: "  :الدولة  ", desc: 'مصر'),
                buildRow(name:  "  :العنوان  ", desc: 'شارع التحرير'),
                buildRow(
                    name: " :البريد الإلكتروني  ", desc: 'AmiraHassan@gmail.com '),
                buildRow(
                    name: "  : الاوقات المتاحه  ", desc: '8 pm : 9 pm '),
                buildRow(
                    name: " : اليوم المتاح ", desc: ' الاحد '),

                SizedBox(
                  height: 70                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
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
                        elevation: MaterialStateProperty.all(
                          12,
                        ),
                      ),
                      icon: Icon(Icons.edit),
                      label: Text("تعديل"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => EditProfile_doc(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

SizedBox buildRow({required String name, required String desc}) {
  return SizedBox(
    height: 33,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          desc,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        Center(
          child: Text(
            name,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    ),
  );
}