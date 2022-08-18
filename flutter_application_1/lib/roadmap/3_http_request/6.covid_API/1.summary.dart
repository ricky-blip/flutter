import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;
import 'package:flutter_application_1/widget/summary_card.dart';
import 'package:flutter_application_1/models/summary_covid19_model.dart';

class SummaryCovidAPI extends StatelessWidget {
  //NOTE create field from model summary
  late SummaryCovid19Model dataSummary;

  //NOTE Function Future
  Future getSummary() async {
    var responseSummaryUrl = await myhttp.get(
      Uri.parse("https://covid19.mathdro.id/api"),
    );
    //NOTE convert from String responseSummaryUrl to Mapping
    var data = json.decode(responseSummaryUrl.body) as Map<String, dynamic>;
    //NOTE Access data to --> dataSummary
    dataSummary = SummaryCovid19Model.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Summary [API COVID-19]'),
        centerTitle: true,
      ),
      //SECTION layoutUI
      body: FutureBuilder(
        //NOTE access function getSummary()
        future: getSummary(),
        builder: (context, snapshot) {
          //NOTE Create Loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("LOADING DATA . . ."),
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SummaryCardConfirm("CONFIRMED", "${dataSummary.confirmed.value}"),
              SummaryCardDeaths("DEATHS", "${dataSummary.deaths.value}"),
            ],
          );
        },
      ),
    );
  }
}
