import 'package:flutter/material.dart';
import 'package:getx_training_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getx_training_app/utility/variables.dart';

class WorkoutDetails extends StatelessWidget {
  const WorkoutDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: winSize.width,
        height: winSize.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/image3.png'),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        )),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Duration and Close Btn
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: DefaultPadding * 2, horizontal: DefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.Color2,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.timer_sharp,
                            color: Colors.white,
                            size: 15,
                          ),
                          const SizedBox(width: 7),
                          Text(
                            '3 Hours',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.close_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 200,
              ),

              // Instructions
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: DefaultPadding,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: DefaultPadding / 2, horizontal: DefaultPadding),
                  decoration: BoxDecoration(
                    color: AppColor.Color1,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 0),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      DoubleColorTitle(text1: '16', text2: 'Moves', size: 14),
                      SizedBox(
                        width: 20,
                      ),
                      DoubleColorTitle(text1: '12', text2: 'Sets', size: 14),
                      SizedBox(
                        width: 20,
                      ),
                      DoubleColorTitle(text1: '30', text2: 'Mins', size: 14),
                    ],
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(
                  top: DefaultPadding,
                  left: DefaultPadding,
                  right: DefaultPadding,
                ),
                child: CategoryTitle(title: 'Advance Workout'),
              ),

              // Review Star
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: DefaultPadding),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColor.Color4,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.Color4,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.Color4,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.Color1,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColor.Color1,
                      size: 20,
                    ),
                  ],
                ),
              ),

              // Tab
              Padding(
                padding: EdgeInsets.all(DefaultPadding),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Description',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Feedback',
                          style: GoogleFonts.poppins(
                            color: Colors.grey.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Related',
                          style: GoogleFonts.poppins(
                            color: Colors.grey.withOpacity(0.5),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a gallery',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(DefaultPadding),
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColor.Color2,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: AppColor.Color2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            'Begin Train for \$5.00',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: AppColor.Color1,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: AppColor.Color2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            'Begin Train Demo',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


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
