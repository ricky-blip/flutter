import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteHome extends StatelessWidget {
  const RouteHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //Access NamedRoute
                Get.toNamed("/pageOne");
              },
              child: Text("Route Page 1"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                //Access NamedRoute
                Get.toNamed("/pageTwo");
              },
              child: Text("Route Page 2"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/pageThree");
                Get.offAllNamed("/");
              },
              child: Text("Route Page 3."),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
