import 'package:flutter/material.dart';
import '../../constants/imagePath.dart';
import '../../constants/colors.dart';

import '../main_screen/depends/customGetStartPages.dart';
import '../register_screen/registerPage.dart';
import '../register_screen/signIn.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  ValueNotifier<int> pageIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                        builder: (context) => const SignIn(),
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(ColorApp.homeColor),
                      fixedSize: MaterialStateProperty.all(
                        Size(size.width * 0.805, size.height * 0.094),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
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
                            text: "Register",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: ColorApp.richText2,
                            ),
                            onEnter: (event) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ),
                              );
                            },
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
