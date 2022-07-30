import 'package:flutter/material.dart';

class ExerciseTwenty extends StatelessWidget {
  const ExerciseTwenty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 20"),
        actions: [
          IconButton(
            onPressed: () {
              print("Icon More Pressed!");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: 250,
            height: 250,
            color: Colors.green,
          ),
          Container(
            width: 225,
            height: 225,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.purple,
          ),
          Container(
            width: 175,
            height: 175,
            color: Colors.yellow,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
