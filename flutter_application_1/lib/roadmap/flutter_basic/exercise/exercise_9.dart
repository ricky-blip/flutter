import 'package:flutter/material.dart';

class ExerciseNine extends StatelessWidget {
  const ExerciseNine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 9"),
        actions: [
          IconButton(
            onPressed: () {
              print("Icon More Pressed!");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.blueAccent,
            child: const Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            width: 100,
            height: 100,
            color: Colors.amberAccent,
            child: const Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
