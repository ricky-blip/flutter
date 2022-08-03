import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  //data list
  final List dataNo = [
    {
      "option": "First option",
      "data": 1,
    },
    {
      "option": "Second option",
      "data": 2,
    },
    {
      "option": "Last option",
      "data": 3,
    }
  ];

  //Costume Default data
  late int dataDefault;

  @override
  void initState() {
    // TODO: implement initState
    // access Default Data
    dataDefault = dataNo[0]["data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down"),
      ),
      body: Center(
        child: DropdownButton<int>(
          // get value Default Data for dropdown, default show is ("first option")
          value: dataDefault,
          //access List and mapping get Data using (e)
          items: dataNo
              .map(
                (e) => DropdownMenuItem(
                  // show interface Dropdown <String>
                  child: Text("Interface : ${e['option']}"),
                  // get data Value <int>
                  value: e['data'] as int,
                ),
              )
              .toList(),
          //show data Value <int>
          onChanged: (value) {
            setState(() {
              dataDefault = value!; //value! because null safety
              print("Click Data $value");
            });
          },
        ),
      ),
    );
  }
}
