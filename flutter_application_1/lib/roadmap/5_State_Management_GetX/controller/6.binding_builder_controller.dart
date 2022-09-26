import 'package:get/get.dart';

class BindingBuilderController extends GetxController {
  RxInt data = 0.obs;

  void decrement() => data--;
  void increment() => data++;
}
