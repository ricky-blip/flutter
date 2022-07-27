/// NOTE membuat list widget:
/// List<namaClassWidgetnya> namaVariabel = List.generate(berapaItem, (index) =>
/// namaClassWidget(parameternya)),
/// gunakan Color.fromARGB untuk color agar bisa di acak
/// ('A'255, 'RGB'Random().nextInt(256))
/// 255 adalah nomor RGB, 256 untuk maximal nilai randomnya
/// untuk mengaksesnya cukup panggil namaVariabel 'allItems'
///
/// NOTE membuat list/map raw
/// List<Map<TipeData, TipeData>>  namaVariabel = List.generate(berapaItem, (index) =>
/// {RAWdatanya}),
/// untuk mengaksesnya namaVariable.map()
/// isi dari map((e) => namaReturnnya)
/// isi dari namaReturnnya(e[],dan seterusnya)
/// lalu diakhir tambahkan .toList()
/// namaVariable.map().toList(),

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/flutter_basic/box_color.dart';

void main() {
  runApp(MappingCollection());
}

class MappingCollection extends StatelessWidget {
  // NOTE membuat list Map<String, dynamic> or RAW data(datamentah)
  List<Map<String, dynamic>> dataRAW = List.generate(
    4,
    (index) => {
      "text": "RAW DATA - ${index + 1}",
      "warna": Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      ),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mapping Collection"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: dataRAW
                .map(
                  (e) => Container(
                    width: 180,
                    height: 180,
                    color: e["warna"],
                    child: Center(
                      child: Text(e["text"]),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
