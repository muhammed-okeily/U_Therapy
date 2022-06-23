import 'package:flutter/material.dart';

import 'dep_Quiz_Quiz.dart';
import 'dep_Quiz_Result.dart';



// ignore: camel_case_types
class dep_Quiz_Main extends StatefulWidget {
  const dep_Quiz_Main({Key? key}) : super(key: key);

  @override
  State<dep_Quiz_Main> createState() => _DoubtState();
}

class _DoubtState extends State<dep_Quiz_Main> {
  static const _data = [
    {
      'questionText': 'الحزن',
      'answers': [
        {'text': 'لا أشعر بالحزن ', 'score': 0.0},
        {'text': 'أشعر بالحزن والكآبة', 'score': 1.0},
        {'text': ' الحزن والانقباض يسيطران علي طوال الوقت، وأعجز عن الفكاك منهما', 'score': 2.0},
        {'text': 'أشعر بالحزن أو التعاسة لدرجة مؤلمة', 'score': 3.0},
        {'text': ' أشعر بالحزن والتعاسة لدرجة لا تحتمل', 'score':4.0},
      ]
    },
    {
      'questionText': 'التشاؤم من المستقبل',
      'answers': [
        {'text': 'لا أشعر بالقلق أو التشاؤم من المستقبل', 'score': 0.0},
        {'text': ' أشعر بالتشاؤم من المستقبل', 'score': 1.0},
        {'text': 'لا يوجد ما أتطلع إليه في المستقبل', 'score': 2.0},
        {'text': 'لا أستطيع أبدا أن أتخلص من متاعبي', 'score': 3.0},
        {'text': 'أشعر باليأس من المستقبل ، وأن الأمور لن تتحسن', 'score': 4.0},
      ]
    },
    {
      'questionText': 'الإحساس بالفشل',
      'answers': [
        {'text': 'لا أشعر بأني فاشل', 'score': 0.0},
        {'text': 'أشعر أن نصيبي من الفشل أكثر من العاديين', 'score': 1.0},
        {'text': 'أشعر أني لم أحقق شيئا له معنى أو أهمية', 'score': 2.0},
        {'text': 'عندما أنظر إلى حياتي في السابق أجدها مليئة بالفشل', 'score': 3.0},
        {'text': 'أشعر أني شخص فاشل تماما(أبا أو زوجا)', 'score': 4.0},
      ]
    },
    {
      'questionText': 'السخط و عدم الرضا',
      'answers': [
        {'text': 'لست ساخطا', 'score': 0.0},
        {'text': 'أشعر بالملل أغلب الوقت', 'score': 1.0},
        {'text': 'لا أستمتع بالأشياء كما كنت من قبل', 'score': 2.0},
        {'text': 'لم أعد أجد شيئا يحقق لي المتعة(او الرضا)', 'score': 3.0},
        {'text': 'إنني غير راض وأشعر بالملل من أي شئ', 'score': 4.0},
      ]
    },
    {
      'questionText': 'الإحساس بالندم أو الذنب  ',
      'answers': [
        {'text': 'لا يصيبني إحساس خاص بالندم أو الذنب على شيء', 'score': 0.0},
        {'text': 'أشعر بأنني سيء أو تافه أغلب الوقت', 'score': 1.0},
        {'text': 'يصيبني إحساس شديد بالندم والذنب', 'score': 2.0},
        {'text': 'شعر بأنني سيء وتافه أغلب الأوقات تقريبا', 'score': 3.0},
        {'text': 'أشعر بأنني سيء وتافه للغاية', 'score': 4.0},
      ]
    },
    {
      'questionText': 'توقع العقاب ',
      'answers': [
        {'text': 'لا أشعر بأن هناك عقابا يحل بي', 'score': 0.0},
        {'text': 'أشعر بأن شيئا سيئا سيحدث أو سيحل بي', 'score': 1.0},
        {'text': 'أشعر بأن عقابا يقع علي بالفعل', 'score':2.0},
        {'text': 'أستحق أن أعاقب', 'score': 3.0},
        {'text': 'أشعر برغبة في العقاب', 'score': 4.0},
      ]
    },
    {
      'questionText': 'كراهية النفس ',
      'answers': [
        {'text': 'لا أشعر بخيبة الأمل في نفسي', 'score': 0.0},
        {'text': ' يخيب أملي في نفسي', 'score': 1.0},
        {'text': 'لا أحب نفسي', 'score':2.0},
        {'text': 'أشمئز من نفسي', 'score': 3.0},
        {'text': 'أكره نفسي', 'score': 4.0},
      ]
    },
    {
      'questionText': 'إدانة الذات',
      'answers': [
        {'text': 'لا أشعر بأني أسوأ من أي شخص آخر', 'score': 0.0},
        {'text': 'أنتقد نفسي بسبب نقاط ضعفي أو أخطائي', 'score': 1.0},
        {'text': 'ألوم نفسي لما أرتكب من', 'score':2.0},
        {'text': 'ألوم نفسي على كل ما يحدث', 'score': 3.0},
      ]
    },
    {
      'questionText': 'وجود أفكار انتحارية',
      'answers': [
        {'text': 'لا تنتابني أي أكار للتخلص من نفسي', 'score': 0.0},
        {'text': 'تراودني أفكار للتخلص من حياتي ولكن لا أنفذها', 'score': 1.0},
        {'text': 'أفضل لي أن أموت', 'score':2.0},
        {'text': 'أفضل لعائلتي أن أموت', 'score': 3.0},
        {'text': 'لدي خطط أكيدة للانتحار', 'score': 4.0},
        {'text': 'سأقتل نفسي في أي فرصة متاحة', 'score': 5.0},
      ]
    },
    {
      'questionText': 'البكاء ',
      'answers': [
        {'text': ' لا أبكي أكثر من المعتاد', 'score': 0.0},
        {'text': 'أبكي أكثر من المعتاد', 'score': 1.0},
        {'text': ' أبكي هذه الأيام طوال الوقت ولا أستطيع أن أتوقف عن ذلك', 'score':2.0},
        {'text': 'كنت قادرا على البكاء ولكنني أعجز الآن عن البكاء حتى لو أردت ذلك', 'score': 3.0},
      ]
    },
    {
      'questionText': 'الاستثارة وعدم الاستقرار النفسي',
      'answers': [
        {'text': 'لست منزعج هذه الايام عن أي وقت مضى', 'score': 0.0},
        {'text': 'أنزعج هذه الأيام بسهولة', 'score': 1.0},
        {'text': 'أشعر بالانزعاج والاستثارة دوما', 'score':2.0},
        {'text': 'ا تثيرني ولا تغضبني الآن حتى الأشياء التي كانت تسبب ذلك سابقا', 'score': 3.0},
      ]
    },
    {
      'questionText': 'الانسحاب الاجتماعي ',
      'answers': [
        {'text': 'ولم أفقد اهتمامي بالناس', 'score': 0.0},
        {'text': 'أنا الآن أقل اهتماما بالآخرين عن السابق', 'score': 1.0},
        {'text': '2فقدت معظم اهتمامي وإحساسي بوجود الآخرين', 'score':2.0},
        {'text': ' فقدت تماما اهتمامي بالأخرين', 'score': 3.0},

      ]
    },
    {
      'questionText': 'التردد و عدم الحسم  ',
      'answers': [
        {'text': 'قدرتي على اتخاذ القرارات بنفس الكفاءة التي كانت عليها من قبل', 'score': 0.0},
        {'text': ' أؤجل اتخاذ القرارات أكثر من قبل', 'score': 1.0},
        {'text': 'أعاني من صعوبة واضحة في اتخاذ القرارات', 'score':2.0},
        {'text': 'أعجز تماما عن اتخاذ أي قرار بالمرة', 'score': 3.0},
      ]
    },
    {
      'questionText': 'تغير صورة الجسم والشك ',
      'answers': [
        {'text': 'لا أشعر بأن شكلي أسوأ من قبل', 'score': 0.0},
        {'text': 'أشعر بالقلق من أني أبدو أكبر سنا وأقل جاذبية', 'score': 1.0},
        {'text': ' أشعر بوجود تغيرات دائمة في شكلي تجعلني أبدو منفرا ( منفرة ) وأقل جاذبية', 'score':2.0},
        {'text': 'أشعر بأن شكلي قبيح ( قبيحة ) ومنفر ( منفرة)', 'score': 3.0},
      ]
    },
    {
      'questionText': 'هبوط مستوى الكفاءة والعمل',
      'answers': [
        {'text': 'أعمل بنفس الكفاءة كما كنت من قبل', 'score': 0.0},
        {'text': 'أحتاج إلى مجهود خاص لكي أبدأ شيئا', 'score': 1.0},
        {'text': 'لا أعمل بنفس الكفاءة التي كنت أعمل بها من قبل', 'score':2.0},
        {'text': ' أدفع نفسي بمشقة لكي أعمل أي شيء', 'score': 3.0},
        {'text': 'أعجز عن أداء أي عمل على الإطلاق', 'score': 4.0},
      ]
    },
    {
      'questionText': 'اضطرابات النوم ',
      'answers': [
        {'text': 'أنام جيدا كما تعودت', 'score': 0.0},
        {'text': 'أستيقظ مرهقا في الصباح كثر من قبل', 'score': 1.0},
        {'text': 'أستيقظ من 2-3 ساعات أبكر من ذي قبل ، وأعجز عن استئناف نومي', 'score':2.0},
        {'text': 'أستيقظ مبكرا جدا ولا أنام بعدها حتى إن أردت', 'score': 3.0},
      ]
    },
    {
      'questionText': 'التعب والقابلية للإرهاق ',
      'answers': [
        {'text': 'لا أتعب بسرعة أكثر من المعتاد', 'score': 0.0},
        {'text': 'أشعر بالتعب والإرهاق أسرع من ذي قبل', 'score': 1.0},
        {'text': 'أشعر بالتعب حتى لو لم أعمل شيئا', 'score':2.0},
        {'text': ' أشعر بالتعب الشديد لدرجة العجز عن عمل أي شيء', 'score': 3.0},
      ]
    },
    {
      'questionText': 'فقدان الشهية ',
      'answers': [
        {'text': 'شهيتي للطعام ليست أسوأ من قبل', 'score': 0.0},
        {'text': 'شهيتي ليست جيدة كالسابق', 'score': 1.0},
        {'text': 'شهيتي أسوأ بكثير من السابق', 'score':2.0},
        {'text': 'لا أشعر برغبة في الأكل بالمرة', 'score': 3.0},
      ]
    },
    {
      'questionText': 'تناقص الوزن ',
      'answers': [
        {'text': 'وزني تقريبا ثابت', 'score': 0.0},
        {'text': 'فقدت أكثر من 3 كغ من وزني', 'score': 1.0},
        {'text': '2فقدت أكثر من 6 كغ من وزني', 'score':2.0},
        {'text': 'فقدت أكثر من 10 كغ من وزني', 'score': 3.0},
      ]
    },
    {
      'questionText': 'تأثر الطاقة الجنسية ',
      'answers': [
        {'text': 'لم ألاحظ أي تغيرات حديثة في رغبتي الجنسية', 'score': 0.0},
        {'text': 'أصبحت أقل اهتماما بالجنس من قبل', 'score': 1.0},
        {'text': 'قلت رغبتي الجنسية بشكل ملحوظ', 'score':2.0},
        {'text': ' فقدت تماما رغبتي الجنسية', 'score': 3.0},
      ]
    },
    {
      'questionText': 'الانشغال على الصحة ',
      'answers': [
        {'text': 'الست مشغولا على صحتي أكثر من السابق', 'score': 0.0},
        {'text': 'أصبحت مشغولا على صحتي بسبب الأوجاع والأمراض ، أو اضطرابات المعدة والإمساك', 'score': 1.0},
        {'text': 'أنشغل بالتغيرات الصحية التي تحدث لي لدرجة أني لا أستطيع أن أفكر في أي سيء آخر', 'score':2.0},
        {'text': 'أصبحت مشغولا تماما بأموري الصحية', 'score': 3.0},
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
                          child: (_indexQuestion <= 20 && _indexQuestion >= 0)
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
