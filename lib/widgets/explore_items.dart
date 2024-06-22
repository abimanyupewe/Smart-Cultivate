import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/home_models/view_details/detail_sawi.dart';
import 'package:get/get.dart';

class Explore_Items extends StatelessWidget {
  final List<Map<String, dynamic>> vegetables = [
    {
      'name': 'Sawi',
      'style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/sawi.png'), // Replace with actual image path
      'color': Color(0xFFB3E2A7),
      'tap': () {
        Get.to(DetailSawi());
      },
    },
    {
      'name': 'Wortel',
      'style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Wortel.png'), // Replace with actual image path
      'color': Color(0xFFFEAE6F),
    },
    {
      'name': 'Labu',
      'style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Labu.png'), // Replace with actual image path
      'color': Color(0xFFFFFF80),
    },
    {
      'name': 'Tomat',
      'style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Tomat.png'), // Replace with actual image path
      'color': Color(0xFFE6BAA3),
    },
    {
      'name': 'Tomat',
      'style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Tomat.png'), // Replace with actual image path
      'color': Color(0xFFE6BAA3),
    },
    {
      'name': 'Tomat',
      'style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Tomat.png'), // Replace with actual image path
      'color': Color(0xFFE6BAA3),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: vegetables.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        final vegetable = vegetables[index];
        return GestureDetector(
          onTap: vegetable.containsKey('tap') ? vegetable['tap'] : null,
          child: Column(
            children: [
              Container(
                width: 500,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: vegetable['color'],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: vegetable['widget'],
              ),
              Text(vegetable['name'], style: vegetable['style']),
            ],
          ),
        );
      },
    );
  }
}
