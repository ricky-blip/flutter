import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/flutter_basic/exercise/exercise_8.dart';

import 'roadmap/flutter_basic/exercise/exercise_1.dart';
import 'roadmap/flutter_basic/exercise/exercise_2.dart';
import 'roadmap/flutter_basic/exercise/exercise_3.dart';
import 'roadmap/flutter_basic/exercise/exercise_4.dart';
import 'roadmap/flutter_basic/exercise/exercise_5.dart';
import 'roadmap/flutter_basic/exercise/exercise_6.dart';
import 'roadmap/flutter_basic/exercise/exercise_7.dart';
import 'roadmap/flutter_basic/exercise/exercise_8.dart';
import 'roadmap/flutter_basic/exercise/exercise_9.dart';
import 'roadmap/flutter_basic/exercise/exercise_10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExerciseTen(),
    );
  }
}
