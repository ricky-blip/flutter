import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/2.simple_controller.dart';

class StateManagerSimple extends StatelessWidget {
  //NOTE Get data from Controller
  final simpleC = Get.put(SimpleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Manager Simple"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //NOTE monitoring data changes
            GetBuilder<SimpleController>(
              builder: (controller) {
                return Text(
                  //NOTE Get Variable from Controller
                  "${simpleC.monitoringData}",
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                //NOTE Get Function from Controller
                simpleC.addData();
              },
              child: Text("+ Add Data"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //NOTE Get Function from Controller
                simpleC.refreshInterface();
              },
              child: Text("Refresh Interface"),
            ),
          ],
        ),
      ),
    );
  }
}
