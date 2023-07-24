import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/icons_path.dart';

import 'view/custom_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_outlined)),
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  const Image(
                    image: AssetImage("assets/icons/profile_icon.png"),
                    height: 130,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: size.height * 0.039,
                      width: size.width * 0.085,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 147, 132),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Image(
                          image: IconsPath.profileCrown,
                          width: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.030),
              const Text(
                "Shambhavi Mishra",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: size.height * 0.005),
              const Text(
                "Food Blogger",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: size.height * 0.030),
              const CustomProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
