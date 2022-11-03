import 'package:flutter/material.dart';
import 'package:getx_training_app/screens/workout_details.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getx_training_app/utility/variables.dart';



class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const WorkoutDetails(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: DefaultMargin),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                width: 130,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              name,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
