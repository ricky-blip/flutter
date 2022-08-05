import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              width: double.infinity, //full width
              height: 100,
              color: Colors.lightBlue,
              child: Text(
                "DASHBOARD MENU",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              // expand all item listTile
              child: ListView(
                padding: EdgeInsets.zero,
                //scroll Item
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("HOME"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu HOME"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop_two),
                    title: Text("PRODUCT"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu PRODUCT"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("HOME"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu HOME"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop_two),
                    title: Text("PRODUCT"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu PRODUCT"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("HOME"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu HOME"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop_two),
                    title: Text("PRODUCT"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu PRODUCT"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("HOME"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu HOME"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop_two),
                    title: Text("PRODUCT"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu PRODUCT"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("HOME"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu HOME"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop_two),
                    title: Text("PRODUCT"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu PRODUCT"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("HOME"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu HOME"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shop_two),
                    title: Text("PRODUCT"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                    onTap: () => print("Click Menu PRODUCT"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
