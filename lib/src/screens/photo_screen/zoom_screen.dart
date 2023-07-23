import 'package:flutter/material.dart';

import '../../constants/imagePath.dart';

class ZoomScreen extends StatelessWidget {
  const ZoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: size.height * 0.659,
          width: double.infinity,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImagePath.highres),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}