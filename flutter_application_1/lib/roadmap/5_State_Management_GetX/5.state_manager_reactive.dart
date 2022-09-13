import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/controller/1.reactive_controller.dart';
import 'package:get/get.dart';

class StateManagerReactive extends StatelessWidget {
  //NOTE Get data from Controller
  final reactiveC = Get.put(ReactiveController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Manager Reactive"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //NOTE monitoring data changes
            Obx(
              () => Text(
                //NOTE Get Variable from Controller
                "${reactiveC.monitoringData}",
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                //NOTE Get Function from Controller
                reactiveC.addData();
              },
              child: Text("+ Add Data"),
            ),
          ],
        ),
      ),
    );
  }
}
