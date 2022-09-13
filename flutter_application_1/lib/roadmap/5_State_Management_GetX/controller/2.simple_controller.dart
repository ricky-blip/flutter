import 'package:get/get.dart';

class SimpleController extends GetxController {
  //NOTE this variable will always be monitored when changing
  var monitoringData = 0;

  //NOTE Function
  void addData() {
    monitoringData++;
    
    //NOTE refresh data per 7
    if (monitoringData % 7 == 0) {
      update();
    }
  }

  void refreshInterface() {
    update();
  }
}
