import 'dart:convert';

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
  final String apiKey =
      "9b5be0e757f9690bbbb750ea67afadaf9426e7a6fe52ba4568ed24f46e018752";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Indonesia Region"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DropdownSearch<String>(
            popupProps: PopupProps.dialog(
              showSelectedItems: true,
              showSearchBox: true,
            ),
            onChanged: (value) => print(value),
            //NOTE function use for getting data
            asyncItems: (text) async {
              //NOTE get from url
              var response = await myhttp.get(
                Uri.parse(
                    "https://api.binderbyte.com/wilayah/provinsi?api_key=$apiKey"),
              );
              //NOTE logic if cant get/not connect from URL
              if (response.statusCode != 200) {
                return [];
              }
              //NOTE decode data body and only get "value" to Mapping and declare as list allProvice
              List allProvice = (json.decode(response.body) as Map)["value"];
              //NOTE get data name from value and declare as list allNameProvice
              List<String> allNameProvince = [];
              //NOTE Looping data name from value for get data nameProvince
              allProvice.forEach((element) {
                allNameProvince.add(
                  element["name"],
                );
              });
              return allNameProvince;
            },
          ),
        ],
      ),
    );
  }
}
