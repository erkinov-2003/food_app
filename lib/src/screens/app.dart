import 'package:flutter/material.dart';
import 'package:foodapp/src/screens/profile_screen/profile_screen.dart';
import 'main_screen/splashPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const ProfileScreen(),
    );
  }
}
