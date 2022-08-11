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
  //show all data user
  List<Map> allUser = [];

  // Function FutureBuilder
  Future getAllUser() async {
    //NOTE add delayed waiting data manually
    // await Future.delayed(Duration(seconds: 3));
    //NOTE waiting data automatically using try catch
    try {
      //Getting Data from Server
      var getResponse = await myhttp.get(
        Uri.parse("https://reqres.in/api/users"),
      );
      //convert to list json and get "[data: ]"
      var data = (json.decode(getResponse.body) as Map)["data"];
      // looping and convert to Mapping
      data.forEach((element) {
        allUser.add(element);
      });
    } catch (e) {
      //print if Error Condition
      print("Error getting data . . .");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Future Builder"),
      ),
      body: FutureBuilder(
        //Access Function FutureBuilder
        future: getAllUser(),
        //add parameter snapshot
        builder: (context, snapshot) {
          //Logic condition when waiting data ...
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("LOADING DATA . . ."),
            );
          } else {
            return ListView.builder(
              // template for placed data
              itemCount: allUser.length, //access getData allUser
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(allUser[index]['avatar']),
                ),
                //NOTE show data to UI
                title: Text(
                    "${allUser[index]['first_name']} ${allUser[index]['last_name']}"),
                subtitle: Text("${allUser[index]['email']}"),
              ),
            );
          }
        },
      ),
    );
  }
}
