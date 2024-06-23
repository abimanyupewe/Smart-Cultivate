import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFf74512D),
        body: Center(
          child: Container(
            width: 500,
            height: 500,
            child: Image.asset("assets/images/LOGO app 1.png"),
          ),
        ),
      ),
    );
  }
}
