import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutePAGE1 extends StatelessWidget {
  const RoutePAGE1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PAGE 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PAGE 1"),
          ],
        ),
      ),
    );
  }
}
