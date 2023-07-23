import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/colors.dart';

import 'depends/food.dart';
import 'depends/foodsWidget.dart';
import 'depends/searchFirstPage.dart';
import 'depends/searchResultEmpty.dart';

class SearchPage extends StatelessWidget {
  FocusNode focusNode = FocusNode();
  final ValueNotifier<bool> onTapSearch;

  SearchPage({required this.onTapSearch, Key? key});

  ValueNotifier<List<Food>> foodList =
      ValueNotifier<List<Food>>(<Food>[...foods]);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: onTapSearch,
      builder: (context, value, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: onTapSearch.value
              ? AppBar(
                  titleSpacing: 120,
                  leading: IconButton(
                    onPressed: () => onTapSearch.value = false,
                    icon: Icon(Icons.arrow_back_sharp),
                  ),
                  title: const Text(
                    "Search",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: ColorApp.searchText,
                    ),
                  ),
                )
              : null,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: onTapSearch.value ? 24 : 90,
                      bottom: 24,
                      left: 24,
                      right: 24),
                  child: TextField(
                    focusNode: focusNode,
                    onTapOutside: (event) {
                      focusNode.unfocus();
                    },
                    onTap: () {
                      onTapSearch.value = true;
                    },
                    onChanged: searchFood,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: ColorApp.searchColor,
                      hintText: "Search recipes, articles, people...",
                      prefixIcon: const Icon(Icons.search),
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
                !onTapSearch.value
                    ? const SearchFirstPage()
                    : ValueListenableBuilder(
                        valueListenable: foodList,
                        builder: (context, value, child) {
                          return foodList.value.isNotEmpty
                              ? Column(
                                  children: [
                                    for (Food item in foodList.value)
                                      ListTile(
                                        leading: Image(
                                          image: AssetImage(item.path),
                                          fit: BoxFit.cover,
                                          height: 35,
                                          width: 35,
                                        ),
                                        title: Text(item.name),
                                        onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => FoodsWidget(
                                              name: item.name,
                                              path: item.path,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                )
                              : const SearchResultEmpty();
                        },
                      ),
              ],
            ),
          ),
        );
      },
    );
  }

  void searchFood(String query) {
    final suggestions = foods
        .where((element) =>
            element.name.toLowerCase().startsWith(query.toLowerCase()))
        .toList();

    foodList.value = suggestions;
  }
}
