import 'package:cheer/navigator/tests/anxiety%20questions/que_Quiz_Quiz.dart';
import 'package:cheer/navigator/tests/anxiety%20questions/que_Quiz_Result.dart';
import 'package:flutter/material.dart';



// ignore: camel_case_types
class que_Quiz_Main extends StatefulWidget {
  const que_Quiz_Main({Key? key}) : super(key: key);

  @override
  State<que_Quiz_Main> createState() => _DoubtState();
}

class _DoubtState extends State<que_Quiz_Main> {
  static const _data = [
    {
      'questionText':'     إذا لم يتسع الوقت لدي للقيام بكل الأعمال التي أريدها، لا ينتابني القلق ',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'حالات القلق التي تنتابني تطغى علي',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'لا أميل للقلق بشأن الأمور',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': ' العديد من المواقف تصيبني بالقلق',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'أعلم أنني لا يجب أن أقلق حيال  الأمور، ولكنني لا أستطيع التحكم في نفسي',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'إن القلق ينتابني بشدة عندما أقع تحت ضغوط ',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'انني دائما ما أقلق حيال الأمور ',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'من السهل بالنسبة لي أن أتجاهل الأفكار المقلقة',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'بمجرد أن أنتهي من مهمة ما، أشرع في القلق حيال كل ما يجب على فعله بعدها ',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'إنني لا أقلق حيال أي شي',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'متى لم يكن هناك شيء آخر يمكن ان أقوم به بشأن شيء ما، أمتنع عن القلق حياله ',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },{
      'questionText': 'إنني مصاب بالقلق طوال حياتي ',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'ألاحظ أن القلق ينتابني حيال الأشياء من حولي',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': ' بمجرد أن أشرع في القلق، لا أتوقف عنه أبدا ',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'القلق يصيبني طوال الوقت',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },
    {
      'questionText': 'إنني أقلق بشأن المشاريع حتى تنتهي ',
      'answers': [
        {'text': 'لا ينطبق ابدا', 'score': 5.0},
        {'text': 'لا ينطبق', 'score': 4.0},
        {'text': 'ينطبق الي حد ما', 'score': 2.0},
        {'text': 'ينطبق ', 'score': 1.0},
        {'text': 'ينطبق بشده', 'score': 3.0},
      ]
    },


     ];

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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                          child: (_indexQuestion <=15 && _indexQuestion >= 0)
                              ? Quiz(
                                  answerQuestion: _answerQuestion,
                                  indexQuestion: _indexQuestion,
                                  data: _data)
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
