import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/1.counter_app.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/11.1binding_builder.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/controller/6.binding_builder_controller.dart';
import 'package:get/get.dart';

class PAGE1 extends StatelessWidget {
  const PAGE1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            // onPressed: () {
            //   Get.to(
            //     () => Page2(),
            //     binding: BindingsBuilder.put(() => BindingBuilderController()),
            //   );
            // },
            onPressed: () => Get.toNamed("/Page2"),
            child: Text("next page >>>"),
          ),
        ),
      ),
    );
  }
}
