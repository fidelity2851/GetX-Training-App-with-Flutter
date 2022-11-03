import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getx_training_app/utility/variables.dart';

class FlashScreenPlan extends StatelessWidget {
  const FlashScreenPlan({
    Key? key,
    required this.title,
    required this.text,
    required this.active,
  }) : super(key: key);

  final String title;
  final String text;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 210,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: AppColor.Color1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(DefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(DefaultPadding / 3),
                  decoration: BoxDecoration(
                    color: AppColor.Color2.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.check,
                    color: active ? AppColor.Color2 : AppColor.Color1,
                    size: 20,
                  ),
                ),
              ],
            ),
            Text(
              title,
              style: GoogleFonts.poppins(
                  color: AppColor.Color2,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
