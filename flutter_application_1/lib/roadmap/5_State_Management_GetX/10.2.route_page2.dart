import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutePAGE2 extends StatelessWidget {
  const RoutePAGE2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PAGE 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PAGE 2"),
          ],
        ),
      ),
    );
  }
}
