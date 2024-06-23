import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../pages/shop_models/view_details/peptisida.dart';


class Shop_Items extends StatelessWidget {
  final List<Map<String, dynamic>> vegetables = [
    {
      'name': 'Peptisida',
      'style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/sawi.png'), // Replace with actual image path
      'color': Color(0xFF4E4E4E4E),
      'tap': () {
        Get.to(Peptisida());
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
      'color': Color(0xFFF4E4E4E4E),
    },
    {
      'name': 'Labu',
      'style': GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      'widget': Image.asset(
          'assets/vegetable_images/Labu.png'), // Replace with actual image path
      'color': Color(0xFF4E4E4E4E),
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
