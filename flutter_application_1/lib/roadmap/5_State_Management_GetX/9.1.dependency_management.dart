import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/5.dependency_management_controller.dart.dart';

class DependencyManagementPages2 extends StatelessWidget {
  //Access data from Controller with Get.find()
  Dependency1 dependency2 = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency-2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Data 2 : ${dependency2.data2["name"]} - ${dependency2.data2["age"]} old",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Data 1 : ${dependency2.data1["name"]} - ${dependency2.data1["age"]} old",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
