import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              onTap: (){
                print("Profil");
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
            ),
        ),
        title: Text("Welcome Sasa"),
        titleTextStyle: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.bold,
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
      backgroundColor: Colors.amber,
      
    );
  }
}
