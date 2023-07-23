import 'package:flutter/material.dart';

import '../../constants/imagePath.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.clear,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image(
                image: AssetImage(ImagePath.burgers),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.145,
            child: ColoredBox(
              color: const Color(0xFFFFF8EE),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFFFF8473),
                        fontSize: 16,
                        fontFamily: 'Signika',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                      children: [
                        TextSpan(text: "Protein\n"),
                        TextSpan(
                          text: "450g",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFFFF8473),
                        fontSize: 16,
                        fontFamily: 'Signika',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                      children: [
                        TextSpan(text: "Calories\n"),
                        TextSpan(
                          text: "220g",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFFFF8473),
                        fontSize: 16,
                        fontFamily: 'Signika',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                      children: [
                        TextSpan(text: "Fat\n"),
                        TextSpan(
                          text: "100g",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFFFF8473),
                        fontSize: 16,
                        fontFamily: 'Signika',
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.24,
                      ),
                      children: [
                        TextSpan(text: "Carbs\n"),
                        TextSpan(
                          text: "49g",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 25, bottom: 8),
            child: Text(
              "Details",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Signika',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 16),
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Color(0xFFA8A8A8),
                  fontSize: 16,
                  fontFamily: 'Signika',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.24,
                ),
                children: [
                  TextSpan(
                    text:
                    'A hamburger (also burger for short) is a\nsandwich consisting of one or more cooked\npatties of ground meat, usually beef, placed\ninside a sliced bread ',
                  ),
                  TextSpan(
                    text: 'Read More...',
                    style: TextStyle(
                      color: Color(0xFF7BBC70),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, bottom: 16),
            child: Text(
              "Ingredients",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'Signika',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.24,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8EE),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Image(
                        image: AssetImage(ImagePath.bread),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8EE),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Image(
                        image: AssetImage(ImagePath.tomato),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8EE),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Image(
                        image: AssetImage(ImagePath.salad),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8EE),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Text(
                          "View\n  All",
                          style: TextStyle(
                            color: Color(0xFFFF8473),
                            fontSize: 12,
                            fontFamily: 'Signika',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.24,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF91C788),
                fixedSize: const Size(290, 72),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              onPressed: () {},
              child: const Center(
                child: Text(
                  "Add To Favorites",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Signika',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}