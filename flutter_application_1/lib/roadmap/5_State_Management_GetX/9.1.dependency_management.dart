import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '9.0.dependency_management.dart';

class DependencyManagementPages2 extends StatelessWidget {
  //NOTE Accomodate Data
  DependencyManagementPages2(this.dataPage2);

  //NOTE Access data from anotherClass
  DependencyManagementPages dataPage2;

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
              "Data 2 : ${dataPage2.data2["name"]} - ${dataPage2.data2["age"]} old",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Data 1 : ${dataPage2.data1["name"]} - ${dataPage2.data1["age"]} old",
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
