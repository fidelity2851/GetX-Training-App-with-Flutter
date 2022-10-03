import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getx_training_app/utility/variables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size WinSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: WinSize.width,
        height: WinSize.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/image3.png'),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: DefaultPadding * 2, horizontal: DefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const DoubleColorTitle(
                    text1: 'Hey,',
                    text2: 'Miau',
                    size: 25,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(DefaultPadding / 2),
                    decoration: BoxDecoration(
                      color: AppColor.Color2,
                      border: Border.all(
                        width: 3,
                        color: AppColor.Color2,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/emely.jpg'),
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(DefaultPadding * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColor.Color2,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(DefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  DoubleColorTitle(
                    text1: 'Find',
                    text2: 'your Workout',
                    size: 25,
                  ),
                  Icon(
                    Icons.filter_alt_outlined,
                    size: 25,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
              child: Container(
                width: WinSize.width,
                padding: const EdgeInsets.symmetric(
                  vertical: DefaultPadding / 1.3,
                  horizontal: DefaultPadding * 1.5,
                ),
                decoration: BoxDecoration(
                  color: AppColor.Color1,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          hintText: 'Search Workout',
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                    ),
                    const Icon(
                      Icons.search_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


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
