import 'package:flutter/material.dart';

import 'widgets/custom_text.dart';
import 'widgets/food_page.dart';
import 'widgets/recipes_page.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  bool isCheck = false;

  void onPressed() {
    setState(() {
      isCheck = !isCheck;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomText(
                text: "Favorite",
                color: Color(0xFF0D0D0D),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding:  EdgeInsets.only(left: size.height * 0.052),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: isCheck ? null : onPressed,
                        child: Container(
                          width: size.width * 0.433,
                          height: size.height * 0.079,
                          decoration: BoxDecoration(
                            color: isCheck
                                ? const Color(0xFFFF9385)
                                : const Color(0xFFFFF8EE),
                            borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(20),
                            ),
                          ),
                          child: Center(
                            child: CustomText(
                              text: "Food",
                              color: isCheck
                                  ? Colors.white
                                  : const Color(0xFFFF8473),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: isCheck ? onPressed : null,
                        child: Container(
                          width: size.width * 0.433,
                          height: size.height * 0.079,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(20),
                            ),
                            color: isCheck
                                ? const Color(0xFFFFF8EE)
                                : const Color(0xFFFF9385),
                          ),
                          child: Center(
                            child: CustomText(
                              text: "Recipes",
                              color: isCheck
                                  ? const Color(0xFFFF8473)
                                  : Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: isCheck ? FoodPage() : const RecipesPage(),
              ),
               SizedBox(height: size.height * 0.039),
            ],
          ),
        ),
      ),
    );
  }
}
