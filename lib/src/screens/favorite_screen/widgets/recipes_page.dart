import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/imagePath.dart';
import 'custom_text.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({Key? key}) : super(key: key);

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.164,
          width: size.width * 0.944,
          child: const Card(
            color: ColorApp.favoriteCardColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: AssetImage(ImagePath.searchmeat),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "250 Kcal",
                      color: Color(0xFF6CB663),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: "Chopped Spring Ramen",
                      color: Color(0xFF2E2E2E),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    CustomText(
                      text: "Scallision & tomatoes",
                      color: Color(0xFF767676),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image(
                      image: AssetImage(ImagePath.heartSelect),
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.172,
          width: size.width * 0.944,
          child: const Card(
            color: ColorApp.favoriteCardColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage(ImagePath.searchsalat),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "450 Kcal",
                      color: Color(0xFF6CB663),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: "Chicken Tandoori",
                      color: Color(0xFF2E2E2E),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    CustomText(
                      text: "Chicken & Salad",
                      color: Color(0xFF767676),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image(
                      image: AssetImage(ImagePath.heartSelect),
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 2,
          child: SizedBox.shrink(),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(ColorApp.homeColor),
            fixedSize: MaterialStateProperty.all(
              Size(size.width * 0.805, size.height * 0.094),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          child: const Text(
            "Search Recipes",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
