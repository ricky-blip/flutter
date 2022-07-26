/// jika kita tidak ingin membuat banyak container berulang-ulang
/// gunakan extract widget di satu container saja
/// lalu buat namaClass nya, dan akan dibuatkan otomatis classnya
/// karna container hanya berbeda di text dan warna nya saja
/// kita atur text dan warna:
import 'package:flutter/material.dart';
import 'widgets/box_color.dart';

void main() {
  runApp(const ExtractWidget());
}

class ExtractWidget extends StatelessWidget {
  const ExtractWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Extract Widget"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              BoxColor(text: "RED", warna: Colors.red),
              BoxColor(text: "YELLOW", warna: Colors.yellow),
              BoxColor(text: "GREEN", warna: Colors.green),
              BoxColor(text: "BLUE", warna: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
