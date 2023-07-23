import 'package:flutter/material.dart';

import '../../constants/imagePath.dart';

class ZoomScreen extends StatelessWidget {
  const ZoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImagePath.cooking),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}