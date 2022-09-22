import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/9.1.dependency_management.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/controller/5.dependency_management_controller.dart.dart';
import 'package:get/get.dart';

class DependencyManagementPages extends StatelessWidget {
  //Access data from Controller
  final dependency1 = Get.lazyPut(() => Dependency1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency-1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DependencyManagementPages2(),
                  ),
                );
              },
              child: Text("Next Page"),
            ),
          ],
        ),
      ),
    );
  }
}
