import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpRequestGet extends StatefulWidget {
  const HttpRequestGet({Key? key}) : super(key: key);

  @override
  State<HttpRequestGet> createState() => _HttpRequestGetState();
}

class _HttpRequestGetState extends State<HttpRequestGet> {
  late String id;
  late String email;
  late String name;

  @override
  void initState() {
    id = "id not found";
    email = "email not found";
    name = "data not found";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http GET [Regres.in]"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("id        : $id"),
                Text("email : $email"),
                Text("name : $name"),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                var regresResponse = await myhttp.get(
                  Uri.parse(
                      "https://reqres.in/api/users/1"), // get data url from regres.in
                );
                if (regresResponse.statusCode == 200) {
                  print("Success : ${regresResponse.statusCode}");
                  //convert regresResponse.body from String to Object(dynamic)
                  var data =
                      json.decode(regresResponse.body) as Map<String, dynamic>;
                  print("Our Database : ${[data]}"); //print database/all data
                  //Using SET State (get Data)
                  setState(() {
                    id = data["data"]["id"].toString();
                    email = data["data"]["email"].toString();
                    name =
                        "${data["data"]["first_name"]}${data["data"]["last_name"]}";
                  });
                } else {
                  print("Error ${regresResponse.statusCode}");
                }
              },
              child: Text("Get Data"),
            ),
          ],
        ),
      ),
    );
  }
}
