import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/summary_card.dart';

class SummaryCovidAPI extends StatelessWidget {
  const SummaryCovidAPI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary'),
        centerTitle: true,
      ),
      //SECTION layoutUI
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SummaryCardConfirm("CONFIRMED", "00000"),
          SummaryCardDeaths("DEATHS", "00000"),
        ],
      ),
    );
  }
}
