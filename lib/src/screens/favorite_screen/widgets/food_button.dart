import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/colors.dart';

class FoodButton extends StatelessWidget {
  final String image;

  const FoodButton({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FilledButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorApp.foodButtonColor),
        fixedSize: MaterialStateProperty.all(
          Size(size.width * 0.277, size.height * 0.131),
        ),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
      child: Image(
        image: AssetImage(image),
      ),
    );
  }
}
