import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpRequestFutureBuilder extends StatefulWidget {
  const HttpRequestFutureBuilder({Key? key}) : super(key: key);

  @override
  State<HttpRequestFutureBuilder> createState() =>
      _HttpRequestFutureBuilderState();
}

class _HttpRequestFutureBuilderState extends State<HttpRequestFutureBuilder> {
  late Map allUser = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http Future Builder"),
      ),
      // body: FutureBuilder(builder: ""),
    );
  }
}
