import 'package:flutter/material.dart';
import 'package:getx_training_app/components/bottom_navbar.dart';
import 'package:getx_training_app/components/category_item.dart';
import 'package:getx_training_app/components/category_tag.dart';
import 'package:getx_training_app/screens/workout_details.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getx_training_app/utility/variables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              // User Name and Image
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
                      padding: const EdgeInsets.all(DefaultPadding / 2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.Color2,
                        border: Border.all(
                          width: 3,
                          color: AppColor.Color2,
                        ),
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

              // Play Icon
              Padding(
                padding: const EdgeInsets.all(DefaultPadding * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.Color2,
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

              // First Title
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

              // Search Form
              Padding(
                padding: const EdgeInsets.all(DefaultPadding),
                child: Container(
                  width: winSize.width,
                  padding: const EdgeInsets.symmetric(
                    vertical: DefaultPadding / 1.3,
                    horizontal: DefaultPadding * 1.5,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.Color1,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            )),
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

              // Category Sort Tag List
              Padding(
                padding: const EdgeInsets.all(DefaultPadding),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CategoryTag(
                        active: true,
                        title: 'Popular',
                      ),
                      CategoryTag(
                        active: false,
                        title: 'Hard workout',
                      ),
                      CategoryTag(
                        active: false,
                        title: 'Full body',
                      ),
                      CategoryTag(
                        active: false,
                        title: 'Crossfit',
                      ),
                    ],
                  ),
                ),
              ),

              // Workout Categories
              Padding(
                padding: const EdgeInsets.all(DefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CategoryTitle(
                      title: 'Popular Workout',
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          CategoryItem(
                            image: 'assets/images/emily.png',
                            name: 'Yoga Excercise',
                          ),
                          CategoryItem(
                            image: 'assets/images/sule.png',
                            name: 'Yoga Excercise',
                          ),
                          CategoryItem(
                            image: 'assets/images/alexsandra.png',
                            name: 'Yoga Excercise',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Workout Categories 2
              Padding(
                padding: const EdgeInsets.all(DefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CategoryTitle(
                      title: 'Hard Workout',
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          CategoryItem(
                            image: 'assets/images/emily.png',
                            name: 'Yoga Excercise',
                          ),
                          CategoryItem(
                            image: 'assets/images/sule.png',
                            name: 'Yoga Excercise',
                          ),
                          CategoryItem(
                            image: 'assets/images/alexsandra.png',
                            name: 'Yoga Excercise',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}