import 'package:farmapp/pages/home_models/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import './pages/onboarding.dart';
// import './pages/login.dart';
// import './widgets/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
    // return FutureBuilder(
    //   future: Future.delayed(
    //     Duration(seconds: 3),
    //   ),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return SplashScreen();
    //     } else {
    //       return GetMaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         home: Onboarding(),
    //       );
    //     }
    //   },
    // );
  }
}
