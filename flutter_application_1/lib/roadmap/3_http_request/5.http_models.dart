import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:http/http.dart' as myhttp;

class HttpModels extends StatefulWidget {
  const HttpModels({Key? key}) : super(key: key);

  @override
  State<HttpModels> createState() => _HttpModelsState();
}

class _HttpModelsState extends State<HttpModels> {
  List<UserModel> allUser = [];

  Future getDataUser() async {
    try {
      var getResponse = await myhttp.get(
        Uri.parse("https://reqres.in/api/users?page=1"),
      );
      List data = (json.decode(getResponse.body) as Map)["data"];
      data.forEach((element) {
        allUser.add(UserModel.fromJson(element)); //change with model #1
      });
    } catch (e) {
      print("Error");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Models"),
      ),
      body: FutureBuilder(
        future: getDataUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("LOADING"),
            );
          } else {
            //handle if url false
            if (allUser.length == 0) {
              return Center(
                child: Text("NO DATA"),
              );
            }
            return ListView.builder(
              itemCount: allUser.length,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  //change with model #2
                  backgroundImage: NetworkImage(allUser[index].avatar),
                ),
                title: Text(
                    "${allUser[index].firstName} ${allUser[index].lastName}"),
                subtitle: Text("${allUser[index].email}"),
              ),
            );
          }
        },
      ),
    );
  }
}
