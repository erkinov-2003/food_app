import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/colors.dart';
import 'package:foodapp/src/constants/imagePath.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 120,
        leading: const BackButton(),
        title: const Text(
          "Search",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: ColorApp.searchText,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: ColorApp.searchColor,
                hintText: "Search recipes, articles, people...",
                prefixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
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
            padding: const EdgeInsets.only(left: 24,top: 16),
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
                                    padding: EdgeInsets.only(left: 12,top: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                  padding: EdgeInsets.only(left: 12,top: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
        ],
      ),
    );
  }
}
