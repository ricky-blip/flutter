/**SECTION Intro Basic Widget
 * Ada yg dinamakan Name Argument:
 * - appbar: , title: , child: , image: 
 * 
 * NOTE 1.widget AppBar di appbar: di dalam Scaffold untuk judul 
 * NOTE 2.widget Container di body: di dalam Scaffold untuk membuat kotak/container
 * NOTE 3.widget FlutterLogo di body: di dalam Scaffold untuk membuat logo default flutter
 * NOTE 4.widget ElevateButton di body: utk membuat tombol dgn onPressed == sebuah fungsi, child == sebuah tombol
 * NOTE 5.widget Icon di body: untuk membuat icon
 * NOTE 6.widget Image di body: untuk import image, ada 4 image provider
 *        1. Asset Image   -> gambar yg ada di local project.
 *        2. Network Image -> gambar yg di import dari internet menggunakan url link
 *        3. File Image (rarely used)
 *        4. Memory Image (rarely used)
 * NOTE untuk mengimport image diperlukan setting di 'pubspec.yaml' 
 *      di bagian to add asset lalu ubah ke path image-nya
 * 
 */
import 'package:flutter/material.dart';

void main() {
  runApp(BasicWidget());
}

class BasicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is App Bar"),
        ),
        body: Center(
          child: Image(
            image: NetworkImage("https://picsum.photos/200/300"),
          ),
        ),
      ),
    );
  }
}
