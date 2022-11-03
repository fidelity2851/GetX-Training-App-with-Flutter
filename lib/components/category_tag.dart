import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getx_training_app/utility/variables.dart';


class CategoryTag extends StatelessWidget {
  const CategoryTag({
    Key? key,
    required this.title,
    required this.active,
  }) : super(key: key);

  final bool active;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: DefaultMargin),
      padding: active
          ? EdgeInsets.symmetric(
              horizontal: (active ? DefaultPadding : 0),
              vertical: DefaultPadding / 10,
            )
          : const EdgeInsets.all(0),
      decoration: active
          ? BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColor.Color2,
                style: BorderStyle.solid,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            )
          : const BoxDecoration(),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
