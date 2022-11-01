import 'package:flutter/material.dart';
import 'package:getx_training_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getx_training_app/utility/variables.dart';
import 'package:getx_training_app/components/flash_screen_plan.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size winSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: winSize.width,
        height: winSize.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/image2.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text(
                    'HARD ',
                    style: GoogleFonts.bebasNeue(
                      color: Colors.white,
                      fontSize: 32,
                      letterSpacing: 1.6,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text(
                    'ELEMENT',
                    style: GoogleFonts.bebasNeue(
                      color: AppColor.Color2,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.6,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('About You',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                          )),
                      const SizedBox(height: 5),
                      Text(
                          'We want to know more about you, follow the next step to complete the information.',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      FlashScreenPlan(
                        title: 'I am Inactive',
                        text: 'I have never trained',
                      ),
                      FlashScreenPlan(
                        title: 'I am Beginner',
                        text: 'I have trained few times',
                      ),
                      FlashScreenPlan(
                        title: 'I am Expert',
                        text: 'I have been training for long',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(DefaultPadding),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Skip Intro',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                      const SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: AppColor.Color2,
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            'Next',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
