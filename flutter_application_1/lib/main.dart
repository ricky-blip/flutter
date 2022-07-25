import 'package:flutter/material.dart';

void main() {
  runApp(ExtractWidget());
}

class ExtractWidget extends StatelessWidget {
  const ExtractWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Extract Widget"),
        ),
        body: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: const Text("RED"),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
              child: const Text("YELLOW"),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
              child: const Text("GREEN"),
            ),
          ],
        ),
      ),
    );
  }
}
