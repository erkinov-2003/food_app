import 'package:flutter/material.dart';
import 'package:foodapp/src/screens/register_screen/depends/data.dart';

import '../main_screen/homePage.dart';
import 'depends/textField.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? name;
  String? password;

  String? validateEmail(String? value) {
    if (value == null) {
      return "Emailda kamida bitta harf bo'lishi kerak";
    }
    if (!RegExp(r'[A-z]+[@]').hasMatch(value!.trim())) {
      return "Email harflardan boshlanishi va @ belgisi bo'lishi shart";
    }
    if (!RegExp(r'[A-z]+[@][A-z]').hasMatch(value.trim())) {
      return "Emailda @ belgidan keyin kamida bitta harf bo'lishi kerak";
    }
    if (!value.contains(".com")) {
      return "Emailda '.com' bo'lishi shart";
    }
    name = value;
    return null;
  }

  String? validatePassword(String? value) {
    if (value!.length <= 8) {
      return "Password kamida 8 ta belgi bo'lishi shart";
    }
    password = value;
    return null;
  }

  String? validateName(String? value) {
    if (value!.length <= 3) {
      return "Password kamida 3 ta belgi bo'lishi shart";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      style: const ButtonStyle(
                        minimumSize: MaterialStatePropertyAll<Size>(
                          Size.fromRadius(25),
                        ),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color(0xFFF3F2F7),
                        ),
                      ),
                      icon: const Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1F4B6B)),
                      children: [
                        TextSpan(text: "Create your "),
                        TextSpan(
                          text: "account",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "quis nostrud exercitation ullamco laboris nisi ut",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xFF52577A)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.065),
                    child: TextFeild(
                      name: "First name",
                      image: "assets/images/ProfileIcon.png",
                      helper: false,
                      validate: validateName,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextFeild(
                      name: "Email",
                      image: "assets/images/email.png",
                      helper: false,
                      validate: validateEmail,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: TextFeild(
                      name: "Password",
                      image: "assets/images/Lock.png",
                      helper: true,
                      validate: validatePassword,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.039,
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Account(name: name!, password: password!);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
                          }
                        },
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color(0xFF8AC640),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            height: size.height * 0.083,
                            width: size.width * 0.772,
                            child: const Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
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
      ),
    );
  }
}
