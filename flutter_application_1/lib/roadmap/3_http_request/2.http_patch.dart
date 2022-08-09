import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpRequestPatch extends StatefulWidget {
  @override
  State<HttpRequestPatch> createState() => _HttpRequestPatchState();
}

class _HttpRequestPatchState extends State<HttpRequestPatch> {
  //Controller for TextField
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  //Server Response Post
  String responsePostName = "";
  String responsePostJob = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http PATCH"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(
              child: Text(
            "Request PATCH",
            style: TextStyle(fontSize: 20),
          )),
          SizedBox(height: 20),
          TextField(
            controller: nameC,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                labelText: "Name", border: OutlineInputBorder()),
          ),
          SizedBox(height: 20),
          TextField(
            controller: jobC,
            keyboardType: TextInputType.text,
            decoration:
                InputDecoration(labelText: "Job", border: OutlineInputBorder()),
          ),
          SizedBox(height: 20),
          //SECTION Request POST
          ElevatedButton(
            onPressed: () async {
              var mysendingPost = await myhttp.patch(
                Uri.parse("https://reqres.in/api/users/2"),
                // Update data/PATCH
                body: {"name": nameC.text, "job": jobC.text},
              );
              //Convert to json mapping
              var data = jsonDecode(mysendingPost.body) as Map<String, dynamic>;
              setState(() {
                responsePostName = "${data["name"]}";
                responsePostJob = "${data["job"]}";
              });
            },
            child: Text("UPDATE"),
          ),
          //SECTION Response
          SizedBox(height: 40),
          Center(
              child: Text(
            "Response",
            style: TextStyle(fontSize: 20),
          )),
          SizedBox(height: 20),
          Text("Name  : ${responsePostName}"),
          SizedBox(height: 10),
          Text("Job      : ${responsePostJob}"),
        ],
      ),
    );
  }
}
