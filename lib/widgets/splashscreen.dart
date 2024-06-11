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
            width: 200,
            height: 200,
            child: Image.asset("assets/images/Logo SmartCultivate.png"),
          ),
        ),
      ),
    );
  }
}
