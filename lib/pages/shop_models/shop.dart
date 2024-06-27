import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:get/get.dart';
import '../home_models/home.dart';
import 'package:lottie/lottie.dart';
import '../../widgets/shop_items.dart';
import '../../widgets/category_items.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shop",
          style: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: Color(0xFFA7E2AD),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.to(HomePage());
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 400,
                height: 260,
                decoration: BoxDecoration(
                  color: Color(0xFFA7E2AD),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    child: Lottie.asset("assets/lotties/sale.json"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xFFFEAE6F),
                        filled: true,
                        hintText: 'Search...',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "All",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Category_Items(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Shop_Items(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 70,
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          selectedIndex: 2,
          // backgroundColor: Colors.amber,
          hoverColor: Colors.black54,
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
