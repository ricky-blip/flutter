import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetStateManagement extends StatelessWidget {
  const BottomSheetStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet with GetX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              Container(
                height: 200,
                color: Colors.amber,
                child: ListView(
                  children: [
                    ListTile(
                      title: Text("HOME"),
                      leading: Icon(Icons.home),
                    ),
                    ListTile(
                      title: Text("PROFILE"),
                      leading: Icon(Icons.person),
                    ),
                    ListTile(
                      title: Text("SETTINGS"),
                      leading: Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text("OPEN BOTTOM SHEET"),
        ),
      ),
    );
  }
}
