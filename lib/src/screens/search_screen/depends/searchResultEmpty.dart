import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/imagePath.dart';

class SearchResultEmpty extends StatelessWidget {
  const SearchResultEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(ImagePath.searchNot)),
            Text(
              "No Results Found",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                  color: ColorApp.searchNotText1),
            ),
            Text(
              "Try searching for a different keywork \nor tweek your search a little",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: ColorApp.searchNotText2),
            ),
          ],
        ),
      ),
    );
  }
}
