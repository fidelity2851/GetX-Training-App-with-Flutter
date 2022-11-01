import 'package:flutter/material.dart';
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

              // Play Icon
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

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: DefaultPadding * 2,
        vertical: DefaultPadding,
      ),
      decoration: BoxDecoration(
        color: AppColor.Color1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.grid_view_rounded,
            color: AppColor.Color2,
            size: 30,
          ),
          Text(
            'Workout',
            style: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Level',
            style: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Profile',
            style: GoogleFonts.poppins(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
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
    return Container(
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
    );
  }
}

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
