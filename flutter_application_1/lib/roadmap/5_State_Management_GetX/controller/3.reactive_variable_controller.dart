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

  //NOTE Type Data Boolean
  RxBool dataBool = false.obs;
  void changeDataBool() {
    // //NOTE syntax 1
    // if (dataBool.value == true) {
    //   dataBool.value = false;
    // } else {
    //   dataBool.value = true;
    // }
    // //NOTE syntax 2
    // if (dataBool.isTrue) {
    //   dataBool.isFalse;
    // } else {
    //   dataBool.isTrue;
    // }
    //NOTE syntax 3
    dataBool.toggle();
  }

  //NOTE Type Data List
  RxList<int> dataList = [1, 2].obs;
  int nextNumberList = 3;

  void addDataList() {
    dataList.add(nextNumberList);
    nextNumberList++;
  }

  void changeDataList() {
    dataList[0] = 99;
  }

  //NOTE Type Data Set
  RxSet<int> dataSet = {1, 2}.obs;
  int nextNumberSet = 3;
  void addDataSet() {
    dataSet.add(nextNumberSet);
    nextNumberSet++;
  }

  void changeDataSet() {
    dataSet.value = {99, 2};
  }

  //NOTE Type Data Map
  RxMap<String, dynamic> dataMap = <String, dynamic>{
    "id": 1,
    "name": "Ricky",
    "age": 99,
  }.obs;

  void changeValue() {
    dataMap["id"] = 2;
    dataMap["name"] = "Roy";
    dataMap["age"] = 98;
  }
}
