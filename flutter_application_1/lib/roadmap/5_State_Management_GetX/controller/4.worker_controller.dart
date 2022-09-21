// ignore_for_file: must_call_super

import 'package:get/get.dart';

class WorkersController extends GetxController {
  RxInt dataObserve = 0.obs;
  void change() => dataObserve++;

  @override
  void onInit() {
    // ever(dataObserve, ((Value) => print("Ever Observe")));
    // once(dataObserve, ((data) => print("only Once 1x Observe")));
    // debounce(
    //   dataObserve,
    //   ((data) => print("execute '2seconds' after quitting observing")),
    //   time: Duration(seconds: 2),
    // );
    interval(
      dataObserve,
      ((data) => print("execute every '2seconds' while data observing")),
      time: Duration(seconds: 2),
    );
  }
}
