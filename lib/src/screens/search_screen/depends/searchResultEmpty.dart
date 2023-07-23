import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/imagePath.dart';

class SearchResultEmpty extends StatelessWidget {
  const SearchResultEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.131),
        child: const Column(
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
