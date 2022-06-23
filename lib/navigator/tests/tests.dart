

import 'package:flutter/material.dart';


import 'Depression test/dep_Quiz_Test_Main.dart';
import 'anxiety questions/que_Quiz_Test_Main.dart';
import 'doubt test/doubt_Quiz_Test_Main.dart';
import 'yale-brown_test/yale-brown_Quiz_Test_Main.dart';



// ignore: camel_case_types
class tests extends StatelessWidget {
  const tests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: const TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: ("الشك"),
                                          style: TextStyle(
                                              color: Colors.yellow,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                      TextSpan(
                                          text:
                                              '''\n\n حالة بين المعتقد وعدم الإيمان ، تنطوي على عدم اليقين أو عدم الثقة أو عدم اليقين من حقيقة مزعومة ، أو فعل ، أو دافع ، أو قرار يثير الشك تساؤلات حول فكرة ما عن "حقيقة" متصورة ، وقد ينطوي على تأخير أو رفض الإجراء ذي الصلة بسبب المخاوف من الأخطاء أو العيوب أو الملاءمة. تؤكد بعض تعريفات الشك على الحالة التي يظل فيها العقل معلقًا بين افتراضين متناقضين وغير قادر على الموافقة على أي منهما  يمكن أن يعني مصطلح الشك أيضًا التشكيك في ظروف المرء وتجربة حياته''',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.0)),
                                      TextSpan(
                                          text:
                                              '''\n\n توصية: كل أسبوعين ''',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0)),
                                      TextSpan(
                                          text:
                                              '''\n\nمدة الاختبار: 1:30 دقيقة''',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0)),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      bottomRight: Radius.circular(30.0),
                                    ),
                                    color: Color(0xFFD2EBED),
                                  ),
                                  child: MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                 const doubt_Quiz_Main(),
                                          ),
                                        );
                                      },
                                      child: const Text('ابدأ الاختبار',
                                          style: TextStyle(fontSize: 16.0))),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
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
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: const TextSpan(children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                ("الوسواس القهري "),
                                            style: TextStyle(
                                                color: Colors.yellow,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16)),
                                        TextSpan(
                                            text:
                                                '''\n\nتفحص الأسئلة على YBOCS مقدار الوقت الذي يقضيه في التفكير والتصرف بناءً على الوساوس والدوافع ، ومقدار الضعف أو الضيق الذي يسببه ، ومدى المقاومة والسيطرة التي يتمتع بها المشارك على أفكاره أو سلوكه''',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.0)),
                                        TextSpan(
                                            text:
                                                '''\n\nتوصية: كل أسبوعين ''',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0)),
                                        TextSpan(
                                            text:
                                                '''\n\n مدة الاختبار: 1:30 دقيقة''',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15.0)),
                                      ]),
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      bottomRight: Radius.circular(30.0),
                                    ),
                                    color: Color(0xFFD2EBED),
                                  ),
                                  child: MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const yale_Quiz_Main(),
                                          ),
                                        );
                                      },
                                      child: const Text('ابدأ الاختبار',
                                          style: TextStyle(fontSize: 16.0))),
                                ),
                              ],
                            ),
                          ],
                        ),
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
                        child: Column(
                          children: [
                            Row(children: [
                              Flexible(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: (" الاكتئاب "),
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    TextSpan(
                                        text:
                                            '''\n\n  هو مرض طبي شائع وخطير يؤثر سلبًا على شعورك وطريقة تفكيرك وكيفية تصرفك. لحسن الحظ ، يمكن علاجها أيضًا. يتسبب الاكتئاب في الشعور بالحزن و / أو فقدان الاهتمام بالأنشطة التي كنت تستمتع بها من قبل. يمكن أن يؤدي إلى مجموعة متنوعة من المشاكل العاطفية والجسدية ويمكن أن يقلل من قدرتك على العمل في العمل والمنزل''',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0)),
                                    TextSpan(
                                        text:
                                            '''\n\nتوصية: كل أسبوعين ''',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0)),
                                    TextSpan(
                                        text:
                                            '''\n\n مدة الاختبار: 1:30 دقيقة''',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0)),
                                  ]),
                                ),
                              ),
                            ]),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      bottomRight: Radius.circular(30.0),
                                    ),
                                    color: Color(0xFFD2EBED),
                                  ),
                                  child: MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>  const dep_Quiz_Main(),
                                          ),
                                        );
                                      },
                                      child: const Text('ابدأ الاختبار',
                                          style: TextStyle(fontSize: 16.0))),
                                ),
                              ],
                            ),
                          ],
                        ),
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
                        child: Column(
                          children: [
                            Row(children: [
                              Flexible(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: ("القلق"),
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    TextSpan(
                                        text:
                                            '''\n\nنتيجة الصورة لوصف استبيان القلق في علم النفس القلق هو شعور بالخوف والرهبة وعدم الارتياح. قد يسبب لك التعرق والشعور بالقلق والتوتر وسرعة ضربات القلب. يمكن أن يكون رد فعل طبيعي للتوتر''',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10.0)),
                                    TextSpan(
                                        text:
                                            '''\n\n توصية: كل أسبوعين''',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0)),
                                    TextSpan(
                                        text:
                                              '''\n\n مدة الاختبار: 1:30 دقيقة''',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0)),
                                  ]),
                                ),
                              ),
                            ]),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      bottomRight: Radius.circular(30.0),
                                    ),
                                    color: Color(0xFFD2EBED),
                                  ),
                                  child: MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const que_Quiz_Main(),
                                          ),
                                        );
                                      },
                                      child: const Text('ابدأ الاختبار',
                                          style: TextStyle(fontSize: 16.0))),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
