import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navbar extends StatelessWidget {
  final Widget tujuan;
  const Navbar({super.key, required this.tujuan});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(200), // tinggi app bar
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(0, 0, 0, 0.3), // warna bayangan`
              spreadRadius: 2, // seberapa luas bayangan
              blurRadius: 5, // seberapa blur bayangan
              offset: Offset(0, 5), // posisi bayangan (x, y)
            ),
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tujuan),
                );
              },
              child: Icon(
                Icons.sailing_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(width: 5),
            Text(
              "Sebuah Aplikasi",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
