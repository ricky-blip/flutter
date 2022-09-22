import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/9.1.dependency_management.dart';
import 'package:get/get.dart';

class DependencyManagementPages extends StatelessWidget {
  //NOTE data
  Map<String, dynamic> data1 = {
    "name": "Ricky",
    "age": 90,
  };
  Map<String, dynamic> data2 = {
    "name": "Yanto",
    "age": 70,
  };

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
            Text(
              "Data 1 : ${data1["name"]} - ${data1["age"]} old",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Data 2 : ${data2["name"]} - ${data2["age"]} old",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DependencyManagementPages2(DependencyManagementPages()),
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
