import 'package:flutter/material.dart';

class ExerciseNineteen extends StatelessWidget {
  const ExerciseNineteen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: FlutterLogo(),
        title: const Text("Exercise 19"),
        actions: [
          IconButton(
            onPressed: () {
              print("Icon More Pressed!");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: 10, //LimitItems
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            height: 150,
            // NOTE Create Decoration
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                //NOTE Decoration Image
                fit: BoxFit.cover,
                image: NetworkImage(
                    // image with id + 1
                    "https://picsum.photos/id/${index + 1}/200/300"),
              ),
            ),
            child: Text(
              "Hello ${index + 1}",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
