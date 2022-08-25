import 'package:flutter/material.dart';

class ExerciseTwentyFour extends StatelessWidget {
  const ExerciseTwentyFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 24"),
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
          //SECTION 1: ListView Horizontal
          Container(
            // NOTE Container Row 1
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            height: 90,
            // color: Colors.green,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                // Logic Genap Ganjil
                if (index % 2 == 0) {
                  return Container(
                    width: 80,
                    // height: 100,
                    color: Colors.blue,
                    margin: const EdgeInsets.only(right: 30),
                  );
                } else {
                  return Container(
                    width: 80,
                    // height: 100,
                    color: Colors.amber,
                    margin: const EdgeInsets.only(right: 30),
                  );
                }
              },
            ),
          ),
          //SECTION 2: ListView Vertical Expanded
          Expanded(
            // NOTE Container Column with Expanded
            child: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: 10, //LimitItems
              itemBuilder: (context, index) {
                // Logic Odd Even
                if (index % 2 == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          color: Colors.blue,
                        ),
                        Text(
                          "Hello ${index + 1}",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          color: Colors.amber,
                        ),
                        Text(
                          "Hello ${index + 1}",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
