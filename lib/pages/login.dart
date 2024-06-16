import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Image(
              image: AssetImage("assets/images/Gardening-cuate.png"),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.offAll(HomePage());
            },
            child: Container(
              width: 350, // lebar tombol
              height: 50, // tinggi tombol
              decoration: BoxDecoration(
                color: Color(0xFF74512D),
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: Alignment.center,
              child: Text(
                'Sign',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
