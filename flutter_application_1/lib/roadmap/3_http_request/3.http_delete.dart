import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpRequestDelete extends StatefulWidget {
  const HttpRequestDelete({Key? key}) : super(key: key);

  @override
  State<HttpRequestDelete> createState() => _HttpRequestDeleteState();
}

class _HttpRequestDeleteState extends State<HttpRequestDelete> {
  String showDataName = "Data Not Found";
  String showDataYear = "Data Not Found";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTTP Delete"),
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          //Button Get
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            onPressed: () async {
              //GetData
              var getData = await myhttp.get(
                Uri.parse("https://reqres.in/api/unknown/2"),
              );
              //Convert to Json Mapping
              var mydata = json.decode(getData.body);
              //Set State showData
              setState(() {
                showDataName = "Name : ${mydata["data"]["name"]}";
                showDataYear = "Year : ${mydata["data"]["year"]}";
              });
            },
            child: Text("Get Data"),
          ),
          SizedBox(height: 30),
          Center(child: Text("$showDataName | $showDataYear")),

          SizedBox(height: 30),
          //Button Delete
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
            ),
            onPressed: () async {
              //DeleteData
              var deleteData = await myhttp.delete(
                Uri.parse("https://reqres.in/api/unknown/2"),
              );
              //status code 204 = delete data
              if (deleteData.statusCode == 204) {
                print("Deleted Successfully");
                setState(() {
                  showDataName = "Deleted Successfully";
                  showDataYear = "Deleted Successfully";
                });
              }
            },
            child: Text("Delete Data"),
          ),
        ],
      ),
    );
  }
}
