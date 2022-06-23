


import 'package:cheer/navigator/home/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

import 'Dep_Quiz_Questions.dart';



class Result extends StatelessWidget {
  final double resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    final score = num.parse(resultScore.toStringAsFixed(2));

    if (score > 0.00 && score <= 9.00) {
      resultText =
      'لايوجد اكتئاب';
    } else if (score > 10.00 && score <= 15.00) {
      resultText =
      ' اكتئاب بسيط';
    }else if (score > 16.00 && score <= 23.00) {
      resultText =
      ' اكتئاب متوسط';
    }else if (score > 24.00 && score <= 36.00) {
      resultText =
      ' اكتئاب شديد';
    }else if (score > 37.00 && score <= 100.00) {
      resultText =
      ' اكتئاب شديد جدا';
    }
    else {
      resultText =
      'حاول مرة أخرى';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    var percent =resultScore ;
    return Center(
        child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 360,
                      child: Question(
                        resultPhrase,
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child:
                    RoundedProgressBar(

                      childLeft: Center(
                        child: Text("$percent%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,color: Colors.white)),
                      ),
                      borderRadius: BorderRadius.circular(1),
                      percent: percent,
                      style: RoundedProgressBarStyle(

                          colorProgress: Colors.red,
                          colorProgressDark: Colors.black,
                          colorBorder: Colors.black,
                          backgroundProgress: Colors.deepOrangeAccent,

                          borderWidth:2,
                          widthShadow: 2),

                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment:CrossAxisAlignment.center ,
                    children: [
                      ElevatedButton(

                        child: const SizedBox(
                          width: 100,
                          child: Text(
                            'حاول مرة أخرى',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black ,
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Color(0xFFD2EBED))),
                        onPressed: resetHandler,
                      ),

                      ElevatedButton(

                        child: const SizedBox(
                          width: 100,
                          child: Text(
                            'احجز المعالج',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black ,
                            ),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Color(0xFFD2EBED))),
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute
                              (builder: (context)=> Home(),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),

              ],
            )));
  }
}