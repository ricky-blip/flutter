import 'package:flutter/material.dart';
import 'package:get/get.dart';

//SECTION Using Stateful
class CounterAppGetX extends StatefulWidget {
  @override
  State<CounterAppGetX> createState() => _CounterAppGetXState();
}

class _CounterAppGetXState extends State<CounterAppGetX> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App Using Stateful"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$counter",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//SECTION Using Stateless GetX
class GetXStateManagement extends StatelessWidget {
  //NOTE create atribute for put class controller
  final controllerGetX = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App Using GetX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //NOTE use Obx = for changing UI 
            Obx(
              () => Text(
                //NOTE Access atribute -> variable in controller -> value
                "${controllerGetX.counterGetX.value}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //NOTE Access atribute -> function
                    controllerGetX.decrement();
                  },
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    //NOTE Access atribute -> function
                    controllerGetX.increment();
                  },
                  child: Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//SECTION Controller for GetX
class Controller extends GetxController {
  //NOTE this Variable 'counterGetX' = state that will always be monitored for changes
  var counterGetX = 0.obs;

  //NOTE Function for counter ++ and --
  increment() => counterGetX++;
  decrement() => counterGetX--;
}
