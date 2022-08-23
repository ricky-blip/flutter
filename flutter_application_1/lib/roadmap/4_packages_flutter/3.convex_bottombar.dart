import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class ConvexBottomBar extends StatefulWidget {
  const ConvexBottomBar({Key? key}) : super(key: key);

  @override
  State<ConvexBottomBar> createState() => _ConvexBottomBarState();
}

class _ConvexBottomBarState extends State<ConvexBottomBar> {
  //NOTE Create Pages Navigation List
  List pages = [
    Center(child: Text("Menu Message")),
    Center(child: Text("Menu Home")),
    Center(child: Text("Menu Profile")),
  ];

  //NOTE Create Current Page Index default:0
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Convex Bottom Navigation Bar"),
      ),
      //NOTE access list pages and add index current page
      body: pages[currentPage],
      bottomNavigationBar: ConvexAppBar(
        //NOTE create Button
        items: [
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 1, //default:0
        onTap: (int i) {
          //SET State
          setState(() {
            currentPage = i;
          });
        },
      ),
    );
  }
}
