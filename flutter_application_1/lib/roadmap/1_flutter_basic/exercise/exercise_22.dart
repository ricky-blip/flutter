import 'package:flutter/material.dart';

class ExerciseTwentyTwo extends StatelessWidget {
  const ExerciseTwentyTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 22"),
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(250 / 2),
              border: Border.all(
                color: Color(0xff0D47A1),
                width: 10,
              ),
              color: Colors.blueGrey,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("https://picsum.photos/536/354"),
              )),
        ),
      ),
    );
  }
}
