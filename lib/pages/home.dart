import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../widgets/vegetable_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFDBA979),
        elevation: 0,
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
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Container(
                width: 430,
                height: 220,
                decoration: BoxDecoration(
                  color: Color(0xFFDBA979),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                  ),
                ),
              ),
              SizedBox(
                width: 370,
                child: Image.asset("assets/images/Hello farmers.png"),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore Vegetables",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print("See All >");
                      },
                      child: Text(
                        "See All >",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Vegetable_Items(),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Todays Weather",style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 70,
        child: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          selectedIndex: 0,
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
            ),
            GButton(
              icon: Icons.heart_broken,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.shopping_basket,
              onPressed: () {
                print("Search");
              },
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
