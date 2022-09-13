import 'package:get/get.dart';

class ReactiveController extends GetxController {
  //NOTE this variable will always be monitored when changing
  var monitoringData = 0.obs;

  void addData() {
    monitoringData++;
  }
}
