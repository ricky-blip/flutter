import 'package:flutter/material.dart';

class BoxColor extends StatelessWidget {
  // create field for parameter for what we want to change
  final String text;
  final Color warna;
  // constructor with name parameter {}
  // bisa dikasih nullable jika tidak required(wajib aja)
  // ignore: use_key_in_widget_constructors
  const BoxColor({
    required this.text,
    required this.warna,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 180,
      color: warna,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
