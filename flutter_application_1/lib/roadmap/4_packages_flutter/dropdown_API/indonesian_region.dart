import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:http/http.dart' as myhttp;

class IndonesiaRegionDropDownAPI extends StatefulWidget {
  const IndonesiaRegionDropDownAPI({Key? key}) : super(key: key);

  @override
  State<IndonesiaRegionDropDownAPI> createState() =>
      _IndonesiaRegionDropDownAPIState();
}

class _IndonesiaRegionDropDownAPIState
    extends State<IndonesiaRegionDropDownAPI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Indonesia Region"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DropdownSearch(),
        ],
      ),
    );
  }
}
