import 'package:flutter/material.dart';

class ExerciseTwentyThree extends StatelessWidget {
  const ExerciseTwentyThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 23"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipOval(
                  child: Container(
                    width: 270,
                    height: 270,
                    color: const Color(0xff0D47A1),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250 / 2),
                      border: Border.all(
                        color: Colors.white,
                        width: 10,
                      ),
                      color: Colors.blueGrey,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://picsum.photos/536/354"),
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Hello World",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
