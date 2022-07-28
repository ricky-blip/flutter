import 'package:flutter/material.dart';

import 'roadmap/flutter_basic/exercise/exercise1.dart';
import 'roadmap/flutter_basic/exercise/exercise2.dart';
import 'roadmap/flutter_basic/exercise/exercise3.dart';
import 'roadmap/flutter_basic/exercise/exercise4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExerciseFour(),
    );
  }
}
