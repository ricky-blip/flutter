import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpRequestFutureBuilder extends StatefulWidget {
  const HttpRequestFutureBuilder({Key? key}) : super(key: key);

  @override
  State<HttpRequestFutureBuilder> createState() =>
      _HttpRequestFutureBuilderState();
}

class _HttpRequestFutureBuilderState extends State<HttpRequestFutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Future Builder"),
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          ElevatedButton(
            onPressed: () async {
              //Get data with click button
              var getData = await myhttp.get(
                Uri.parse("https://reqres.in/api/users"),
              );
              //convert to json list and get "data:" list user
              var data =
                  (json.decode(getData.body) as Map<String, dynamic>)["data"];
              //looping forEach <list> and convert to Mapping list
              data.forEach((element) {
                Map<String, dynamic> user = element; //convert to Mapping
                print(user);
              });
            },
            child: Text("Get Data"),
          ),
        ],
      ),
    );
  }
}
