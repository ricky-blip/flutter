import 'dart:math';

import 'package:flutter/material.dart';

class ExerciseFour extends StatelessWidget {
  const ExerciseFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 4"),
        actions: [
          IconButton(
            onPressed: () {
              print("Icon More Pressed!");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Transform.rotate(
          //formula pi 90 derajat = pi / (180 / 90)
          angle: pi / (180 / 90),
          child: const FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
