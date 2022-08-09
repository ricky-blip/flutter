import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpRequestPost extends StatefulWidget {
  @override
  State<HttpRequestPost> createState() => _HttpRequestPostState();
}

class _HttpRequestPostState extends State<HttpRequestPost> {
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
        title: Text("Http POST"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(
              child: Text(
            "Request POST",
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
              var mysendingPost = await myhttp.post(
                Uri.parse("https://reqres.in/api/users"),
                // Sending data/POST
                body: {"name": nameC.text, "job": jobC.text},
              );
              //Convert to json mapping
              var data = jsonDecode(mysendingPost.body) as Map<String, dynamic>;
              setState(() {
                responsePostName = "${data["name"]}";
                responsePostJob = "${data["job"]}";
              });
            },
            child: Text("SUBMIT"),
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
