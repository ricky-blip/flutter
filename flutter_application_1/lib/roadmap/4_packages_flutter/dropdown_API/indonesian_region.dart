import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_application_1/roadmap/4_packages_flutter/dropdown_API/city_model.dart';
import 'package:flutter_application_1/roadmap/4_packages_flutter/dropdown_API/province_model.dart';
import 'package:http/http.dart' as myhttp;

class IndonesiaRegionDropDownAPI extends StatefulWidget {
  const IndonesiaRegionDropDownAPI({Key? key}) : super(key: key);

  @override
  State<IndonesiaRegionDropDownAPI> createState() =>
      _IndonesiaRegionDropDownAPIState();
}

class _IndonesiaRegionDropDownAPIState
    extends State<IndonesiaRegionDropDownAPI> {
  String? idProvince;

  final String apiKey =
      "9b5be0e757f9690bbbb750ea67afadaf9426e7a6fe52ba4568ed24f46e018752";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Indonesia Region"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          //SECTION Data Province
          const Text("Data Province"),
          const SizedBox(height: 10),
          DropdownSearch<ProvinceModel>(
            popupProps: PopupProps.menu(
              showSearchBox: true,
              //NOTE show data Pop Up
              itemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.name),
              ),
            ),
            //NOTE show data dropdown
            dropdownBuilder: (context, selectedItem) =>
                Text(selectedItem?.name ?? "Choose Province"),

            //NOTE convert idProvince to value.id
            onChanged: (value) => idProvince = value?.id,
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
              List<ProvinceModel> allModelProvince = [];
              //NOTE Looping data name from value for get data nameProvince
              allProvice.forEach((element) {
                allModelProvince.add(
                  ProvinceModel(
                    id: element["id"],
                    name: element["name"],
                  ),
                );
              });
              return allModelProvince;
              DropdownSearchPopupItemBuilder;
            },
          ),
          SizedBox(height: 30),
          //SECTION Data City
          Text("Data City"),
          SizedBox(height: 10),
          DropdownSearch<CityModel>(
            popupProps: PopupProps.menu(
              showSearchBox: true,
              //NOTE show data Pop Up
              itemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.name),
              ),
            ),
            //NOTE show data dropdown
            dropdownBuilder: (context, selectedItem) =>
                Text(selectedItem?.name ?? "Choose City"),
            onChanged: (value) => print(value?.toJson()),
            //NOTE function use for getting data
            asyncItems: (text) async {
              print("id Provinsi = $idProvince");
              //NOTE get from url
              var response = await myhttp.get(
                Uri.parse(
                    "https://api.binderbyte.com/wilayah/kabupaten?api_key=$apiKey&id_provinsi=$idProvince"),
              );
              //NOTE logic if cant get/not connect from URL
              if (response.statusCode != 200) {
                return [];
              }
              //NOTE decode data body and only get "value" to Mapping and declare as list allProvice
              List allCity = (json.decode(response.body) as Map)["value"];
              //NOTE get data name from value and declare as list allNameProvice
              List<CityModel> allModelCity = [];
              //NOTE Looping data name from value for get data nameProvince
              allCity.forEach((element) {
                allModelCity.add(
                  CityModel(
                    id: element["id"],
                    idProvinsi: element["id_provinsi"],
                    name: element["name"],
                  ),
                );
              });
              return allModelCity;
            },
          ),
        ],
      ),
    );
  }
}
