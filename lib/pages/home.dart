import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDBA979),
        leading: Padding(
          padding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
          child: GestureDetector(
            onTap: () {
              print("Profil");
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
            ),
          ),
        ),
        title: Text("Welcome, Sasa"),
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        actions: [
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.notifications_active_outlined),
            onPressed: () {
              print("Notif"); // Aksi yang akan dilakukan saat ikon ditekan
            },
          ),
        ],
      ),
      body: GNav(
        rippleColor: Colors.black, // tab button ripple color when pressed
        hoverColor: Colors.black54, // tab button hover color
        haptic: true, // haptic feedback
        tabBorderRadius: 15,
        tabActiveBorder:
            Border.all(color: Colors.black, width: 1), // tab button border
        tabBorder:
            Border.all(color: Colors.grey, width: 1), // tab button border
        tabShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
        ], // tab button shadow
        curve: Curves.easeOutExpo, // tab animation curves
        duration: Duration(milliseconds: 900), // tab animation duration
        gap: 8, // the tab button gap between icon and text
        color: Colors.grey[800], // unselected icon color
        activeColor: Colors.purple, // selected icon and text color
        iconSize: 24, // tab button icon size
        tabBackgroundColor:
            Colors.purple.withOpacity(0.1), // selected tab background color
        padding: EdgeInsets.symmetric(
            horizontal: 20, vertical: 5), // navigation bar padding
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.heart_broken,
            text: 'Likes',
          ),
          GButton(
            icon: Icons.search,
            onPressed: () {
              print("Search");
            },
            text: 'Search',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          )
        ],
      ),
    );
  }
}
