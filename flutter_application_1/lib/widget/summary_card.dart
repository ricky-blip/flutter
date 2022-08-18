import 'package:flutter/material.dart';

//SECTION Card Confirm
class SummaryCardConfirm extends StatelessWidget {
  String titleCard1;
  String subtitleCard1;

  SummaryCardConfirm(this.titleCard1, this.subtitleCard1);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(20),
      elevation: 7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightGreen,
        ),
        height: 150,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titleCard1,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                subtitleCard1,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//SECTION Card Deaths
class SummaryCardDeaths extends StatelessWidget {
  String titleCard2;
  String subtitleCard2;

  SummaryCardDeaths(this.titleCard2, this.subtitleCard2);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(20),
      elevation: 7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
        ),
        height: 150,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titleCard2,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                subtitleCard2,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
