import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:get/get.dart';
import '../home_models/home.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shop",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Text("Shop"),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 70,
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          selectedIndex: 2,
          // backgroundColor: Colors.amber,
          hoverColor: Colors.black54, // tab button hover color
          haptic: false, // haptic feedback
          tabBorderRadius: 20, // tab button border radius
          tabMargin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          tabActiveBorder:
              Border.all(color: Colors.black, width: 1), // tab button border
          curve: Curves.easeInOut, // tab animation curves
          duration: Duration(milliseconds: 400), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.grey[700], // unselected icon color
          activeColor: Colors.black, // selected icon and text color
          iconSize: 24, // tab button icon size
          padding: EdgeInsets.symmetric(
              horizontal: 10, vertical: 5), // navigation bar padding
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
              onPressed: () {
                Get.to(HomePage());
              },
            ),
            GButton(
              icon: Icons.heart_broken,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.shopping_basket,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
