import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
        centerTitle: true,
      ),
      body: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "Snack Bar Done!",
                style: TextStyle(color: Colors.deepOrange),
              ),
              action: SnackBarAction(
                label: "Cancel",
                onPressed: () {
                  print("Cancel SnackBar");
                },
              ),
              backgroundColor: Colors.black,
              duration: Duration(seconds: 3),
              margin: EdgeInsets.all(30),
              behavior: SnackBarBehavior.floating,
            ),
          );
        },
        child: Text("Show Snack Bar"),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
        ),
      ),
    );
  }
}
