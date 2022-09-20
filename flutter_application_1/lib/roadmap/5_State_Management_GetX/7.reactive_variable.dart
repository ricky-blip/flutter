import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/controller/3.reactive_variable_controller.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class ReactiveVariablePages extends StatelessWidget {
  final reactiveVariableC = Get.put(ReactiveVariableController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reactive Variable"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: [
          //NOTE Integer
          const Center(child: Text("Type Data Integer")),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${reactiveVariableC.dataInt}",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.decrementInt(),
                    child: Text("-"),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.incrementInt(),
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          //NOTE String
          Center(child: Text("Type Data String")),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${reactiveVariableC.dataString}",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.updateDataString(),
                    child: Text("Update"),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.resetDataString(),
                    child: Text("Reset"),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          //NOTE Double
          Center(child: Text("Type Data Double")),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${reactiveVariableC.dataDouble}",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.decrementDouble(),
                    child: Text("-"),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.incrementDouble(),
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          //NOTE Boolean
          Center(child: Text("Type Data Boolean")),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${reactiveVariableC.dataBool}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.changeDataBool(),
                    child: Text("Change Boolean"),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          //NOTE List
          Center(child: Text("Type Data List")),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${reactiveVariableC.dataList}",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.addDataList(),
                    child: Text("Add"),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.changeDataList(),
                    child: Text("Change:99"),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          //NOTE Set
          Center(child: Text("Type Data Set")),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${reactiveVariableC.dataSet}",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.addDataSet(),
                    child: Text("Add"),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () => reactiveVariableC.changeDataSet(),
                    child: Text("Change:99"),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Divider(
              height: 5,
              color: Colors.black,
              thickness: 5,
            ),
          ),
          //NOTE Map
          SizedBox(height: 20),
          Center(child: Text("Type Data Map")),
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => ListTile(
                    leading: CircleAvatar(
                      child: Text("${reactiveVariableC.dataMap["id"]}"),
                    ),
                    title: Text("${reactiveVariableC.dataMap["name"]}"),
                    subtitle: Text("${reactiveVariableC.dataMap["age"]}"),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  reactiveVariableC.changeValue();
                },
                child: Text("Change Name"),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
