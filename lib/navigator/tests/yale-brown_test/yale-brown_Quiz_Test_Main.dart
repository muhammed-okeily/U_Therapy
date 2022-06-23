// ignore: file_names
import 'dart:collection';

import 'package:cheer/navigator/tests/Depression%20test/Dep_Quiz_Questions.dart';
import 'package:flutter/material.dart';
import 'package:cheer/shared/components/services/api.dart';

import '../Questions_two.dart';
import 'yale-brown_Quiz_Quiz.dart';
import 'yale-brown_Quiz_Result.dart';

// ignore: camel_case_types
class yale_Quiz_Main extends StatefulWidget {
  const yale_Quiz_Main({Key? key}) : super(key: key);

  @override
  State<yale_Quiz_Main> createState() => _DoubtState();
}

class _DoubtState extends State<yale_Quiz_Main> {

  var _indexQuestion = 0;
  double _totalScore = 0.00;

  void _answerQuestion(double score) {
    _totalScore += score;

    setState(() {
      _indexQuestion += 1;
    });
  }

  void _restart() {
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: const Color(0xFF012A4A),
      ),
      body: Container(
        color: const Color(0xFFD2EBED),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                        color: Color(0xFF012A4A),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: "تعليمات ",
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                        '''\nيرجى قراءة عناصر المقياس واختيار أفضل إجابة تناسب الأسبوعين الماضيين. لا توجد إجابات صحيحة أو خاطئة ، ولا تحتاج إلى قضاء الكثير من الوقت في الإجابة على أي منها''',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0)),
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
                        color: Color(0xFF012A4A),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: "إخلاء المسؤولية  ",
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                        '''\nهذا التقييم لا يشير إلى تشخيص مؤكد. لتحديد أي تشخيص محتمل ، ناقش نتائجك مع معالجك. نتائجك مع معالجك. سيتم عرض نتائجك لك فقط''',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0)),
                                  ]),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ),
                 /* FutureBuilder<List<Q>>(
                    future: api.questionstwo(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<Q> _doctors = snapshot.data!;
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            child: Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0),

                                  ),
                                  color: Color(0xFF012A4A),
                                ),
                                alignment: Alignment.center,
                                child: (_indexQuestion <= 9 && _indexQuestion >= 0)
                                    ? Quiz(
                                    answerQuestion: _answerQuestion,
                                    indexQuestion: _indexQuestion,
                                    data: data)
                                    : Result(_totalScore, _restart)
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }

                      // By default, show a loading spinner.
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      );
                    },
                  ),*/

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),

                            ),
                            color: Color(0xFF012A4A),
                          ),
                          alignment: Alignment.center,
                          child: (_indexQuestion <= 9 && _indexQuestion >= 0)
                              ? Quiz(
                              answerQuestion: _answerQuestion,
                              indexQuestion: _indexQuestion,
                              data: data)
                              : Result(_totalScore, _restart)
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
