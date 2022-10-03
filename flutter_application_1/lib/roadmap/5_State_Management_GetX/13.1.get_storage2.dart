import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/7.getstorage_login_controller.dart';

class HomePages extends StatelessWidget {
  final LoginController loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome ..."),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loginC.logout();
        },
        child: Icon(Icons.logout_rounded),
      ),
    );
  }
}
