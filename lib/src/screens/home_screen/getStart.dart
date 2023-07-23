import 'package:flutter/material.dart';
import '../../constants/imagePath.dart';
import '../../constants/colors.dart';

import '../main_screen/depends/customGetStartPages.dart';
import '../main_screen/homePage.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  ValueNotifier<int> pageIndex =ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              flex: 2,
              child: Image(image: AssetImage(ImagePath.logo2)),
            ),
            Expanded(
              flex: 6,
              child: CustomGetStartPages(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        )),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ColorApp.homeColor),
                        fixedSize:
                            MaterialStateProperty.all(const Size(290, 72)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: ColorApp.richText1,
                        ),
                        children: [
                          const TextSpan(text: "Already Have An Acount? "),
                          TextSpan(
                            text: "Log In",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: ColorApp.richText2,
                            ),
                            onEnter: (event) {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
