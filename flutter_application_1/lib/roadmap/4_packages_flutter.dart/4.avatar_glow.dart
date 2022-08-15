import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class AvatarGlowPackage extends StatelessWidget {
  const AvatarGlowPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Avatar Glow Package")),
      body: Center(
        child: AvatarGlow(
          glowColor: Colors.red,
          endRadius: 100.0,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          repeatPauseDuration: Duration(milliseconds: 100),
          child: Material(
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              backgroundImage:
                  NetworkImage("https://picsum.photos/id/237/500/300"),
              radius: 60.0,
            ),
          ),
        ),
      ),
    );
  }
}
