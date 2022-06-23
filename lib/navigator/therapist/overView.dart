
import 'package:flutter/material.dart';

import 'edit_profile.dart';

class OverView extends StatefulWidget {
  @override
  _OverViewState createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  backgroundColor: const Color(0xFF012A4A),),
      body: Container(      color: const Color(0xFFD2EBED),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(

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
                        fontSize: 21),
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
                        fontSize: 21),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "أنا مستشار طبي محترف مرخص في ولاية كانساس ولدي أكثر من 27 عامًا.", textDirection: TextDirection.rtl,textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
               ),),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    "تفاصيل الملف الشخصي",textAlign: TextAlign.right, textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 21),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                buildRow(name: "    :   الأسم بالكامل  ", desc:' أميرة حسن ' ,),
                buildRow(name:'   :  النوع   ' , desc: "  أنثى "),
                buildRow(name: "  :   المهنة  ", desc: '  طبيب نفسي '),
                buildRow(name: "   :  الدولة  ", desc: 'مصر'),
                buildRow(name:  "  :  العنوان  ", desc: 'شارع التحرير'),
                buildRow(
                    name: "  :  البريد الإلكتروني  ", desc: 'AmiraHassan@gmail.com '),
                SizedBox(
                    height: 220         ),

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
            fontSize: 14
          ),
        ),
        Center(
          child: Text(
            name,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.normal,
              fontSize: 16
            ),
          ),
        ),
      ],
    ),
  );
}
