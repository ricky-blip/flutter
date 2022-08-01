import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Title"),
              content: Text("This is Content, you can see it."),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              actions: [
                ElevatedButton(onPressed: () {}, child: Text("Cancel")),
                ElevatedButton(onPressed: () {}, child: Text("OK")),
              ],
            ),
          );
        },
        child: Text("Show Dialog"),
      ),
    );
  }
}
