/// SECTION the difference between stateless and stateful
///
///

import 'package:flutter/material.dart';

class IncrementApps extends StatefulWidget {
  @override
  State<IncrementApps> createState() => _IncrementAppsState();
}

class _IncrementAppsState extends State<IncrementApps> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Increment Apps"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$value", 
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    value--;
                    print("(-) $value");
                    setState(() {});
                  },
                  child: Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () {
                    value++;
                    print("(+) $value");
                    setState(() {});
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
