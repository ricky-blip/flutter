import 'package:flutter/material.dart';
import 'package:flutter_application_1/roadmap/4_packages_flutter/4.avatar_glow.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SECTION Intro Screen
    return IntroductionScreen(
      pages: [
        //SECTION Page View
        //NOTE 1st Page
        PageViewModel(
          title: "Title of 1st page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Lottie.asset('assets/lotties/screen1.json'),
          ),
        ),
        //NOTE 2nd Page
        PageViewModel(
          title: "Title of 2nd page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Lottie.asset('assets/lotties/screen2.json'),
          ),
        )
      ],
      //SECTION Next
      showNextButton: true,
      next: Text("Next", style: TextStyle(fontWeight: FontWeight.w600)),
      //SECTION Done
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        // When done button is press
        Navigator.pushReplacement(
          //used to move to the next page but can't go back page
          context,
          MaterialPageRoute(
            builder: (context) => AvatarGlowPackage(),
          ),
        );
      },
    );
  }
}
