import 'package:flutter/material.dart';

class ExerciseOne extends StatelessWidget {
  const ExerciseOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          leading: FlutterLogo(),
          title: const Text("Exercise 1"),
          actions: [
            IconButton(
              onPressed: () {
                print("Icon More Pressed!");
              },
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: const Center(
          child: Text(
            "Hello World!",
            style: TextStyle(
              fontSize: 40,
              backgroundColor: Colors.lightBlueAccent,
            ),
          ),
        ),
      ),
    );
  }
}
