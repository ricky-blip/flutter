import 'package:flutter/material.dart';

class ExerciseFive extends StatelessWidget {
  const ExerciseFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 5"),
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
        child: Container(
          width: 250,
          height: 250,
          color: Colors.lightBlue,
          child: const Center(
            child: Text(
              "HELLO",
              style: TextStyle(
                fontSize: 50,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
