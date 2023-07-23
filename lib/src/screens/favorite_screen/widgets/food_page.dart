import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/imagePath.dart';
import 'package:foodapp/src/screens/favorite_screen/widgets/food_button.dart';

import '../../../constants/colors.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FoodButton(image: ImagePath.searchshirinlik),
            FoodButton(image: ImagePath.searchburger),
            FoodButton(image: ImagePath.searchpizza),
          ],
        ),
        SizedBox(height: size.height * 0.032),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FoodButton(image: ImagePath.searchpicheniye),
            FoodButton(image: ImagePath.searchxotdog),
            FoodButton(image: ImagePath.plus),
          ],
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
            "Search Food",
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
