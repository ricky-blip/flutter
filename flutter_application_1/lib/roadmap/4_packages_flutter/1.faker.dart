import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class FakerDummyData extends StatelessWidget {
  //NOTE Create Field Faker
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAKER"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage:
                NetworkImage("https://picsum.photos/id/${870 + index}/200/300"),
          ),
          //NOTE Access Faker
          title: Text("${faker.person.name()}"),
          subtitle: Text("${faker.internet.email()}"),
        ),
      ),
    );
  }
}
