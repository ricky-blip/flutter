import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/5_State_Management_GetX/controller/4.worker_controller.dart';
import 'package:get/get.dart';

class WorkersGetX extends StatelessWidget {
  const WorkersGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final workersC = Get.put(WorkersController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Workers GetX"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Observe "),
                    Text("${workersC.dataObserve} ",
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const Text("Times"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                onChanged: (value) => workersC.change(),
                decoration: const InputDecoration(
                  label: Text("Data with Ever_Feature"),
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
