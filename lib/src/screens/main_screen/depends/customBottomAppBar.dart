import 'package:flutter/material.dart';
import 'package:foodapp/src/constants/icons.dart';

import '../../../constants/colors.dart';
import '../../../constants/imagePath.dart';
import '../../profile_screen/profile_screen.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    required this.pageNumber,
    required this.onPageChange,
    super.key,
  });

  final int pageNumber;
  final void Function(int value) onPageChange;

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        elevation: 0,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        type: BottomNavigationBarType.fixed,
        currentIndex: pageNumber,
        onTap: onPageChange,
        showSelectedLabels: true,
        items: [
          const BottomNavigationBarItem(
            icon: Image(image: AssetImage(ImagePath.home)),
            activeIcon: Image(image: AssetImage(ImagePath.homeSelect)),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Image(image: AssetImage(ImagePath.search)),
            activeIcon: Image(image: AssetImage(ImagePath.searchSelect)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const CircleAvatar(
                  backgroundColor: ColorApp.cameraButton,
                  child: Image(image: AssetImage(IconApp.scan))),
              selectedIcon: const CircleAvatar(
                  backgroundColor: ColorApp.cameraButton,
                  child: Image(image: AssetImage(ImagePath.camera))),
              onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),)),
            ),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Image(image: AssetImage(ImagePath.heart)),
            activeIcon: Image(image: AssetImage(ImagePath.heartSelect)),
            label: "",
          ),
          const BottomNavigationBarItem(
            icon: Image(image: AssetImage(ImagePath.profile)),
            activeIcon: Image(image: AssetImage(ImagePath.profileSelect)),
            label: "",
          ),
        ],
      );
}
