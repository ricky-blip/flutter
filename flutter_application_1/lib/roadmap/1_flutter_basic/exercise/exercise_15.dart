import 'package:flutter/material.dart';

class ExerciseFifteen extends StatelessWidget {
  const ExerciseFifteen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 15"),
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
        //NOTE Parent Column
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //NOTE ROW 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Column 1, Row 1",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 100,
                height: 100,
                color: Colors.amberAccent,
                child: const Center(
                  child: Text(
                    "Column 2, Row 1",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const FlutterLogo(size: 200),
          //NOTE ROW 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amberAccent,
                child: const Center(
                  child: Text(
                    "Column 1, Row 2",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
                child: const Center(
                  child: Text(
                    "Column 2, Row 2",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
