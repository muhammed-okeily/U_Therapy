

import 'package:cheer/chat/screens/Home.dart';
import 'package:cheer/modules/start/start.dart';
import 'package:flutter/material.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ' U therapy',
      debugShowCheckedModeBanner: false,
      home:start(),
    );

  }
}


