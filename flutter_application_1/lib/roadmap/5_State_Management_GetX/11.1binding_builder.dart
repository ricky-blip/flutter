import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/controller/6.binding_builder_controller.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});

  BindingBuilderController _BindingBuilderC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2 - Counter"),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "${_BindingBuilderC.data}",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _BindingBuilderC.decrement();
                      },
                      child: Text("-")),
                  ElevatedButton(
                      onPressed: () {
                        _BindingBuilderC.increment();
                      },
                      child: Text("+")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
