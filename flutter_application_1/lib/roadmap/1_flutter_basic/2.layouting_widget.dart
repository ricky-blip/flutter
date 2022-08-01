/// SECTION invisible widget / layouting widget
/// di intro basic widget itu kita sebut visible/kelihatan widgetnya
/// invisible widget seperti:
/// 1. Center -> widget ke tengah
/// 2. Column -> membuat widget secara vertical, tambahkan di bagian body: Column()
/// 3. Row ->

import 'package:flutter/material.dart';

void main() {
  runApp(const InvisibleWidget());
}

class InvisibleWidget extends StatelessWidget {
  const InvisibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Layouting Widget"),
        ),
        body: GridView(
          padding: const EdgeInsets.all(5),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
