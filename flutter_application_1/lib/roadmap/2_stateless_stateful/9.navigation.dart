import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/2_stateless_stateful/7.bottom_sheet.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        centerTitle: true,
        title: Text("[HOME] Navigation Widget"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black54),
          ),
          onPressed: () {
            //Push or Next Page or add new layer
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BottomSheetWidget(),
              ),
            );
          },
          child: Text("Next to Bottom Sheet Page >"),
        ),
      ),
    );
  }
}
