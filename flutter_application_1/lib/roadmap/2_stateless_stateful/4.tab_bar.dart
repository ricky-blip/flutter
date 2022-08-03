import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with TickerProviderStateMixin {
  // initialize tabController with late(not using now)
  late TabController tabC = TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("WhatsApp - Tab Bar"),
        bottom: TabBar(
          //access controller
          controller: tabC,
          tabs: [
            //styling using wrapped with widget Tab()
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
      //BODY
      body: TabBarView(
        //access controller
        controller: tabC,
        children: [
          Center(child: Text("CAMERA")),
          Center(child: Text("CHATS")),
          Center(child: Text("STATUS")),
          Center(child: Text("CALLS")),
        ],
      ),
    );
  }
}
