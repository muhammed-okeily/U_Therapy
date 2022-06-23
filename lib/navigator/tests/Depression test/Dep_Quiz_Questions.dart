import 'package:flutter/material.dart';

@immutable
class Question extends StatelessWidget {
  final String textQuestion;

  const Question(this.textQuestion, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom:10),
        child: SizedBox(
            width: 160,
            child: Text(textQuestion,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: Colors.white,
                ))));
  }
}