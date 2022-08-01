///ada 2 tipe yg sering digunakan: 1)ListView.Builder(), 2)GridView.Builder()
/// 1).ListViewBuilder = langsung pakai builder tanpa membuat fieldnya
/// caranya langsung ListView.builder()
/// di dalamnya ada itemCount: = untuk melimit Item
/// ada itemBuilder: (context, index) => namaClassWidget() = untuk lgsg mengakses widget/data2nya
/// 2).GridViewBuilder = langsung pakai builder tanpa membuat fieldnya
/// caranya langsung GridView.builder()
/// di dalamnya ada itemCount: 8, = untuk melimit item yg ditampilkan
/// ada gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
/// ada itemBuilder: (context, index) => namaClassWidget() = untuk lgsg mengakses widget/data2nya
///
import 'dart:math';

import 'package:flutter/material.dart';
import '../../widget/box_color.dart';

void main() {
  runApp(const WidgetBuilder());
}

class WidgetBuilder extends StatelessWidget {
  const WidgetBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget Builder GridView"),
        ),
        body: GridView.builder(
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => BoxColor(
            text: "Grid - ${index + 1}",
            warna: Color.fromARGB(
              255,
              Random().nextInt(256),
              Random().nextInt(256),
              Random().nextInt(256),
            ),
          ),
        ),
      ),
    );
  }
}
