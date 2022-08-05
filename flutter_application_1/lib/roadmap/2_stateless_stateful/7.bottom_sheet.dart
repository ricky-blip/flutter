import 'package:flutter/material.dart';

import 'package:flutter_application_1/roadmap/2_stateless_stateful/9.navigation.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(), //remove back or previous page
        centerTitle: true,
        title: Text("Bottom Sheet"),
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    isDismissible: false, //lock
                    backgroundColor: Colors.lightBlueAccent[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    context: context,
                    builder: (context) => SizedBox(
                      height: 200,
                      child: ListView(
                        children: [
                          Center(
                            child: Text(
                              "This is Bottom Sheet (Upload File)",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          ListTile(
                            onTap: () => print("Upload Photo"),
                            leading: Icon(Icons.photo_camera_back_outlined),
                            title: Text("Photo"),
                          ),
                          ListTile(
                            onTap: () => print("Upload Video"),
                            leading: Icon(Icons.video_camera_back_outlined),
                            title: Text("Video"),
                          ),
                          ListTile(
                            onTap: () => Navigator.pop(context), //Close Button
                            leading: Icon(Icons.close_outlined),
                            title: Text("Close"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Text("Show Bottom Sheet"),
              ),
            ),
          ),

          //NOTE Previous Page to HOME
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black54),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NavigationWidget(),
                  ),
                );
              },
              child: Text("< Previous Page to HOME "),
            ),
          ),
        ],
      ),
    );
  }
}
