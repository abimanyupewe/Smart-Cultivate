// 0A6847 hijau
// 74512D soklat
// Welcome to the Smart Cultivate App
// Membantu petani mengelola pertanian mereka dengan lebih efisien dan efektif.
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Welcome to the Smart Cultivate App',
            body:
                'Membantu petani mengelola pertanian mereka dengan lebih efisien dan efektif.',
            image: Image.asset("assets/images/Gardening-cuate.png"),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(fontSize: 20),
              bodyTextStyle: TextStyle(
                color: Colors.grey,
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
              bodyAlignment: Alignment.center,
            ),
          ),
          PageViewModel(
            title: 'Welcome to the Smart Cultivate App',
            body:
                'Membantu petani mengelola pertanian mereka dengan lebih efisien dan efektif.',
            image: Image.asset("assets/images/Rice field-bro.png"),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(fontSize: 20),
              bodyTextStyle: TextStyle(
                color: Colors.grey,
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
              bodyAlignment: Alignment.center,
            ),
          ),
          PageViewModel(
            title: 'Welcome to the Smart Cultivate App',
            body:
                'Membantu petani mengelola pertanian mereka dengan lebih efisien dan efektif.',
            image: Image.asset("assets/images/petani.png"),
            decoration: PageDecoration(
              titleTextStyle: TextStyle(fontSize: 20),
              bodyTextStyle: TextStyle(
                color: Colors.grey,
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
              bodyAlignment: Alignment.center,
            ),
          ),
        ],
        globalFooter: Container(
          margin: EdgeInsets.only(bottom: 50),
          child: ElevatedButton(
            onPressed: () {
              Get.to(Login());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF74512D), // Set to color soklat
              minimumSize: Size(200, 50), // Set width and height pada button
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              textStyle: TextStyle(fontSize: 20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ), // Add the icon
              ],
            ),
          ),
        ),
        autoScrollDuration: 2000,
        infiniteAutoScroll: true,
        showNextButton: false,
        showBackButton: false,
        showSkipButton: false,
        showDoneButton: false,
        dotsDecorator: DotsDecorator(
          activeColor: Color(0xFF0A6847),
          color: Color(0xFFE4E4E4),
          activeSize: Size(20.0, 10.0),
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
        controlsMargin: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}
