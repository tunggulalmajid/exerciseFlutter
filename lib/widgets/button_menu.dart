import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({
    required this.text,
    required this.warna,
    required this.panjang,
    super.key,
  });

  final String text;
  final Color warna;
  final double panjang;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: panjang,
      height: 175,
      decoration: BoxDecoration(
        color: warna,
        border: Border.all(
          color: Colors.black,
          width: 0.5,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
