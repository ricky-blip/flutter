import 'package:get/get.dart';

class ReactiveVariableController extends GetxController {
  //NOTE Type Data Integer
  RxInt dataInt = 0.obs;
  void incrementInt() => dataInt++;
  void decrementInt() => dataInt--;

  //NOTE Type Data String
  RxString dataString = "data".obs;
  void updateDataString() => dataString.value = "data(Update)";
  void resetDataString() => dataString.value = "data";

  //NOTE Type Data Double
  RxDouble dataDouble = 0.0.obs;
  void incrementDouble() => dataDouble.value++;
  void decrementDouble() => dataDouble.value--;
}
