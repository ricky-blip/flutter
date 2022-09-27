import 'package:flutter_application_1/roadmap/5_State_Management_GetX/11.1binding_builder.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/controller/6.binding_builder_controller.dart';
import 'package:get/get.dart';

class BindingsClass extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => BindingBuilderController());
  }
}
