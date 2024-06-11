import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(HomePage());
          },
          child: Text("Login"),
        ),
      ),
    );
  }
}
