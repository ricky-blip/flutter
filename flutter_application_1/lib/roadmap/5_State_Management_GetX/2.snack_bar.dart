import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarGetX extends StatelessWidget {
  const SnackBarGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar with GetX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar(
              "Halo",
              "This is SnackBar with GetX",
              snackPosition: SnackPosition.BOTTOM,
            );
          },
          child: Text("Show SnackBar"),
        ),
      ),
    );
  }
}
