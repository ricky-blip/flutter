import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogWidgetStateManagement extends StatelessWidget {
  const DialogWidgetStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog with GetX"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(title: "Title");
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
