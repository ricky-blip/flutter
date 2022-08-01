import 'package:flutter/material.dart';

class ExerciseThirteen extends StatelessWidget {
  const ExerciseThirteen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 13"),
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
          Row(
            // ROW 1
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Row 1, Column1",
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
                    "Row 1, Column 2",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            // ROW 2
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amberAccent,
                child: const Center(
                  child: Text(
                    "Row 2, Column 1",
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
                    "Row 2, Column 2",
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
