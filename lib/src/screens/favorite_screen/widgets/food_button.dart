import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/colors.dart';

class FoodButton extends StatelessWidget {
  final String image;

  const FoodButton({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      child: Image(
        image: AssetImage(image),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorApp.foodButtonColor),
        fixedSize: MaterialStateProperty.all(const Size(100, 100)),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
