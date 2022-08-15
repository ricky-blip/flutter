import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

class IntlDateFormat extends StatelessWidget {
  var faker = new Faker();

  //NOTE create field date and change DataTime to String
  String date = DateTime.now().toIso8601String();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INTL (Date Format)"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage:
                NetworkImage("https://picsum.photos/id/${870 + index}/200/300"),
          ),
          title: Text("${faker.person.name()}"),
          //NOTE access INTL packages
          subtitle:
              Text("${DateFormat.yMd().add_Hm().format(DateTime.parse(date))}"),
        ),
      ),
    );
  }
}
