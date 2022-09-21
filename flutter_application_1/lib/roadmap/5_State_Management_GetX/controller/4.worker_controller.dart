// ignore_for_file: must_call_super

import 'package:get/get.dart';

class WorkersController extends GetxController {
  RxInt dataObserve = 0.obs;
  void change() => dataObserve++;

  @override
  void onInit() {
    ever(dataObserve, ((Value) => print("Ever Observe")));
  }
}
