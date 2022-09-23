import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutePAGE3 extends StatelessWidget {
  const RoutePAGE3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PAGE 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PAGE 3"),
          ],
        ),
      ),
    );
  }
}
