import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Peptisida extends StatefulWidget {
  // Use StatefulWidget to manage state
  const Peptisida({super.key});

  @override
  State<Peptisida> createState() => _DetailSawiState();
}

class _DetailSawiState extends State<Peptisida> {
  bool isBookmarked = false; // Track bookmark status

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detail Peptisida"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                // Update the UI when bookmark status changes
                isBookmarked = !isBookmarked;
              });

              // TODO: Add logic to save the bookmark status (e.g., to local storage or a database)
            },
            icon: Icon(
              isBookmarked ? Icons.bookmark : Icons.bookmark_border_outlined,
            ),
          ),
        ],
        // backgroundColor: Color(0xFFDBA979),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 380,
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xFFB3E2A7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  "assets/vegetable_images/sawi.png",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Sawi",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 195,
                  // child: Divider(
                  //   thickness: 2,
                  //   color: Colors.black,
                  // ),
                ),
                Text("20 K per PCS",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),),
              ],
            ),
            subtitle: Text(
              "Sawi adalah sekolompok tumbuhan dari genus brasicca yang di manfaatkan daun atau bunga sebagai bahan pangan (sayuran) baik segar maupun diolah. sawi mencakup beberapa species brassica yang kadang kadang mirip satu sama lain. Diindonesia sendiri, penyebutan sawi biasanya mengacu pada sawihijau(Brassica beberapa species yang dikelompok parachinensis, yang disebut juga sawi bakso, caisim, atau caisin).",
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Cara Pembuatan"),
          ),
        ],
      ),
    );
  }
}
