import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
