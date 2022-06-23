// ignore_for_file: file_names,prefer_const_constructors


import 'package:cheer/models/doctor/test.dart';
import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
 Test test;
   TestWidget({
    Key? key,
    required this.test,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.blue.shade900,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                test.title,
                style: TextStyle(
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8,
              ),
              child: Text(
                test.body * 2,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "التوصية كل${test.id} الأسابيع",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "الاختبار خلال ${test.reactions} دقائق",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                ),
                child: Text(
                  "بدأ الاختبار",
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,
                      content: Text("تم البدء"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
