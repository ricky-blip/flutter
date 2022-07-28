import 'package:flutter/material.dart';

class ExerciseTen extends StatelessWidget {
  const ExerciseTen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 10"),
        actions: [
          IconButton(
            onPressed: () {
              print("Icon More Pressed!");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
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
          const SizedBox(height: 15),
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
