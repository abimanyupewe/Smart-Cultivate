import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vegetable_Items extends StatelessWidget {
  final List<Map<String, dynamic>> vegetables = [
    {
      'name': 'Sawi', 
      'Style' : GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/sawi.png'), // Replace with actual image path
      'Colors': Color(0xFFB3E2A7),
      'Tap' : () {
          print("Sawi");
        },
    },
    {
      'name': 'Wortel',
      'Style' : GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Wortel.png'), // Replace with actual image path
      'Colors': Color(0xFFFEAE6F),
    },
    {
      'name': 'Labu',
      'Style' : GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Labu.png'), // Replace with actual image path
      'Colors': Color(0xFFFFFF80),
    },
    {
      'name': 'Tomat',
      'Style' : GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Tomat.png'), // Replace with actual image path
      'Colors': Color(0xFFE6BAA3),
    },
    {
      'name': 'Tomat',
      'Style' : GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Tomat.png'), // Replace with actual image path
      'Colors': Color(0xFFE6BAA3),
    },
    {
      'name': 'Tomat',
      'Style' : GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Tomat.png'), // Replace with actual image path
      'Colors': Color(0xFFE6BAA3),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: vegetables.map((vegetable) {
          return GestureDetector(
            onTap: vegetable['Tap'],
            child: Column(
              children: [
                Container(
                  width: 100,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: vegetable['Colors'],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: vegetable['widget'],
                ),
                Text(vegetable['name'],style: vegetable['Style'],),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
