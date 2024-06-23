import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/home_models/view_details/detail_sawi.dart';
import 'package:get/get.dart';

class Category_Items extends StatelessWidget {
  final List<Map<String, dynamic>> vegetables = [
    {
      'name': 'Sawi',
      'Style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'Colors': Color(0xFFB3E2A7),
      'Tap': () {
        Get.to(DetailSawi());
      },
    },
    {
      'name': 'Wortel',
      'Style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'Colors': Color(0xFFFEAE6F),
    },
    {
      'name': 'Labu',
      'Style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'Colors': Color(0xFFFFFF80),
    },
    {
      'name': 'Tomat',
      'Style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'Colors': Color(0xFFE6BAA3),
    },
    {
      'name': 'Tomat',
      'Style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'Colors': Color(0xFFE6BAA3),
    },
    {
      'name': 'Tomat',
      'Style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
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
            child: Container(
              width: 100,
              height: 30,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  vegetable['name'],
                  style: vegetable['Style'],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
