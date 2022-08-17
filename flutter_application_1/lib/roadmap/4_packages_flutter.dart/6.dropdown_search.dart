import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class DropDownSearchPackage extends StatelessWidget {
  //NOTE use data mappingList
  List<Map> dataList = [
    {
      "Country": "Brazil",
      "id": 1,
    },
    {
      "Country": "Italia",
      "id": 2,
    },
    {
      "Country": "Tunisia",
      "id": 3,
    },
    {
      "Country": "Canada",
      "id": 4,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropDown Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: DropdownSearch<Map>(
          popupProps: PopupProps.menu(
            showSearchBox: true,
            //NOTE Costume PopUp dropdown Item (showing only data 'Country')
            itemBuilder: (context, item, isSelected) => ListTile(
              title: Text(
                item["Country"].toString(),
              ),
            ),
          ),
          items: dataList,
          onChanged: ((value) => print(value?["Country"])),
          selectedItem: const {
            "Country": "Brazil",
            "id": 1,
          },
          clearButtonProps: const ClearButtonProps(isVisible: true),
          //NOTE Costume dropDown Item (showing only data 'Country')
          dropdownBuilder: (context, selectedItem) =>
              Text(selectedItem?["Country"].toString() ?? "not selected data"),
        ),
      ),
    );
  }
}
