import 'package:flutter/material.dart';

class ExerciseSeven extends StatelessWidget {
  const ExerciseSeven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 7"),
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
        // NOTE untuk jarak horizontal bisa gunakan margin atau SizedBox
        children: [
          Container(
            // margin: EdgeInsets.only(right: 15),
            width: 125,
            height: 125,
            color: Colors.blueAccent,
            child: const Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          Container(
            // margin: EdgeInsets.only(left: 15),
            width: 125,
            height: 125,
            color: Colors.amberAccent,
            child: const Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  fontSize: 30,
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
