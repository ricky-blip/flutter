/** SECTION
 * 1. import package flutter material dart
 * 2. runApp dan panggil namaClass di main
 * 3. type 'stl' lalu pilih flutter stateless/statefull widget
 * 4. samakan namaClass nya dengan yg ada di main 
 * 5. dibagian Widget build(), return widget MaterialApp(), lalu home:
 * 6. di dalam materialapp, ada widget scaffold(), lalu body:
 * 7. di dalam scaffold(), akan ada banyak widget2 yg bisa digunakan.
 *    - ada widget Text() untuk membuat tulisan.
 *    - ada widget 'Colors.' dan 'color()' untuk memberi warna.
 * 8. untuk center gunakan Center()
 * 
 * Ada yg dinamakan Name Argument:
 * - home:
 * - body:
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: Center(child: Text("Hello World!")),
      ),
    );
  }
}
