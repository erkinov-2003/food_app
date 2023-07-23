import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/imagePath.dart';

class SearchFirstPage extends StatelessWidget {
  const SearchFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 32),
          child: Text(
            "Hot Now",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SizedBox(
                    height: 231,
                    width: 200,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: ColorApp.searchCardColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Stack(
                        children: [
                          Image(
                              image: AssetImage(ImagePath.searchCardImage1)),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: 72,
                              width: double.infinity,
                              child: ColoredBox(
                                color: ColorApp.searchCardColor,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 12, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "The Pumkins Secrets",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "The Pumkins Secrets",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 231,
                  width: 200,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: ColorApp.searchCardColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Stack(
                      children: [
                        Image(image: AssetImage(ImagePath.searchCardImage1)),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 72,
                            width: double.infinity,
                            child: ColoredBox(
                              color: ColorApp.searchCardColor,
                              child: Padding(
                                padding: EdgeInsets.only(left: 12, top: 10),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The Pumkins Secrets",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "The Pumkins Secrets",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      "best vegetable recipes",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorApp.searchTrendingtext,
                      ),
                    ),
                    Image(image: AssetImage(ImagePath.searchVektor)),
                  ],
                ),
              ),
              Divider(color: ColorApp.searchDeviderColor),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text(
                      "cool season vegetables",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorApp.searchTrendingtext,
                      ),
                    ),
                    Image(image: AssetImage(ImagePath.searchVektor)),
                  ],
                ),
              ),
              Divider(color: ColorApp.searchDeviderColor),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text(
                      "chicken recipes with eggs",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorApp.searchTrendingtext,
                      ),
                    ),
                    Image(image: AssetImage(ImagePath.searchVektor)),
                  ],
                ),
              ),
              Divider(color: ColorApp.searchDeviderColor),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text(
                      "soups",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ColorApp.searchTrendingtext,
                      ),
                    ),
                    Image(image: AssetImage(ImagePath.searchVektor)),
                  ],
                ),
              ),
              Divider(color: ColorApp.searchDeviderColor),
            ],
          ),
        ),
      ],
    );
  }
}
