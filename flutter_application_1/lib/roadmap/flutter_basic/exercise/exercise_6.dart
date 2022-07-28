import 'package:flutter/material.dart';

class ExerciseSix extends StatelessWidget {
  const ExerciseSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 6"),
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
        //bisa dibungkus juga Container dengan ClipOval
        child: Container(
          width: 250,
          height: 250,
          //menggunakan boxdecoration borderRadius
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(250),
            color: Colors.blue,
          ),
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
