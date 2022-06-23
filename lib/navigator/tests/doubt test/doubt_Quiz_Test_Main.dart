import 'package:flutter/material.dart';

import 'doubt_Quiz_Quiz.dart';
import 'doubt_Quiz_Result.dart';

// ignore: camel_case_types
class doubt_Quiz_Main extends StatefulWidget {
  const doubt_Quiz_Main({Key? key}) : super(key: key);

  @override
  State<doubt_Quiz_Main> createState() => _DoubtState();
}

class _DoubtState extends State<doubt_Quiz_Main> {
  static const _data = [
    {
      'questionText': 'يسيطر علي الشعور بالاضطهاد ',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]

    },
    {
      'questionText': 'لا اتحمل اي نقد يوجه لي',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]

    },
    {
      'questionText':'شديد الحساسيه لاي شئ يخصني ',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'لا اهتم بالحب او الرحمه او التسامح',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'استعمل السخريه الجارحه مع من اتعامل معه',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'اشم رائحه الخيانه تصدر من حولي',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },

    {
      'questionText': 'انظر في عيون من اتصل بهم بدقه حتي اجد مؤشرا لكدبهم',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },{
      'questionText': 'ارتاح عندما استعمل النقد اللادع لمن حولي',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },{
      'questionText': 'اسئ تأويل كل كلمه اسمعها',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': ' اتوقع العداء و الايداء ممن اتصل بهم',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': ' اشعر بأني لا اخطئ أبدا',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': ' اشعر بأن كل الناس اشرار و متآمرين',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'اتنصت علي الآخرين بكل الوسائل',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'ثوابتي لا تتغير حتي لو كانت غير منطقيه',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'يزداد شكي و سوء ظني كلما بدا الآخرون حسن نواياهم معي',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'يسيطر علي سوء الظن بمن اتعامل معه',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'لا اغير راي اثناء الحوار او النقاش',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },{
      'questionText': 'اتوقع الغدر و الخيانه من كل من اتعامل معهم',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'اتهم الغير مهما حاولوا اثبات براءتهم',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'يدكر الآخرون بان الكلام معي مجهد و متعب و بدون فائده',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'كلما تودد لي الآخرون و ارادوا التقرب مني كلما زاد قلقي و شكي بهم',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'اشعر بالكراهيه تجاه الآخرين ',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'اسال كثيرا عن حركات و سكنات ممن اتعامل معهم',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'احلل كلام الناس كثيرا ',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'اجعل اقرب الناس لي في موقف المتهمين و المدافعين عن انفسهم',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },{
      'questionText': 'اتنصت علي اقرب الناس لي',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },{
      'questionText': 'اشعر بأن الاخرون يكدبون في كلامهم',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },{
      'questionText': 'ابحث فيما بين الكلمات عن النوايا السيئه لدي الاخرين',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
      ]
    },
    {
      'questionText': 'تتحرك ميولي العدوانيه عند الالتقاء بالاخرين',
      'answers': [
        {'text': 'دائما', 'score': 3.0},
        {'text': 'احيانا', 'score': 2.0},
        {'text': 'ابدا', 'score': 1.0},
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
                        padding: const EdgeInsets.all(10.0),
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
                        padding: const EdgeInsets.all(10.0),
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
                    padding: const EdgeInsets.all(1.0),
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
                          child: (_indexQuestion <= 28 && _indexQuestion >= 0)
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
