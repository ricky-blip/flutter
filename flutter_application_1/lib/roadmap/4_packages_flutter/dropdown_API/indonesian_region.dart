import 'package:flutter/material.dart';

class IndonesiaRegionDropDownAPI extends StatefulWidget {
  const IndonesiaRegionDropDownAPI({Key? key}) : super(key: key);

  @override
  State<IndonesiaRegionDropDownAPI> createState() =>
      _IndonesiaRegionDropDownAPIState();
}

class _IndonesiaRegionDropDownAPIState
    extends State<IndonesiaRegionDropDownAPI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Indonesia Region"),
      ),
    );
  }
}
