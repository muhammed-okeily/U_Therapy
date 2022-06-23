import 'package:flutter/material.dart';

// ignore: camel_case_types
class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {},
          ),
        ],
        backgroundColor: const Color(0xFF012A4A),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              color: Colors.indigo,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "INSTRUCTURE ",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
                              '''\nplease read the scale items and choose the best answer that fits during the last 2 weeks.there are no right or wrong answers.and you do not need to spend too much time answering any of them.''',
                          style:
                              TextStyle(color: Colors.white, fontSize: 10.0)),
                    ]),
                  ),
                ),
              ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
              color: Colors.indigo,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Flexible(
                  child: RichText(
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "DISCLAIMER  ",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text:
        '''\nthis assessment does not indicate a confirmed diagnosis . to determine any potential diagnosis,discuss your results with your therapist. your results with your therapist . your results will be shown to you only. '''

                       ,   style:
                              TextStyle(color: Colors.white, fontSize: 10.0)),
                    ]),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
