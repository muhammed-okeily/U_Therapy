import 'package:flutter/material.dart';

@immutable
class Question extends StatelessWidget {
  final String textQuestion;

  const Question(this.textQuestion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
            width: 360,
            child: Text(textQuestion,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: Colors.white,
                ))));
  }
}