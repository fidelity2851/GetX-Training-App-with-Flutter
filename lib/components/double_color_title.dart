import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getx_training_app/utility/variables.dart';


class DoubleColorTitle extends StatelessWidget {
  const DoubleColorTitle({
    Key? key,
    required this.text1,
    required this.text2,
    required this.size,
  }) : super(key: key);

  final String text1;
  final String text2;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: GoogleFonts.poppins(
            color: AppColor.Color2,
            fontSize: size,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          text2,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: size,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
