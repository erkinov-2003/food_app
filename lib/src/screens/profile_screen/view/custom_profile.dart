import 'package:flutter/material.dart';
import 'custom_list_tile.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
        left: size.width * 0.027,
        right: size.width * 0.027,
        top: size.height * 0.010,
      ),
      child:  Column(
        children: [
          const CustomListTile(
            text: "Edit Profile",
            images: "assets/icons/person_icon.png",
          ),
          SizedBox(height: size.height * 0.010),
          const CustomListTile(
            text: "Renew Plans",
            images: "assets/icons/star_icons.png",
          ),
          SizedBox(height: size.height * 0.010),
          const CustomListTile(
            text: "Settings",
            images: "assets/icons/settings_icon.png",
          ),
          SizedBox(height: size.height * 0.010),
          const CustomListTile(
            text: "Terms % of Privacy Policy",
            images: "assets/icons/file_icons.png",
          ),
          SizedBox(height: size.height * 0.010),
          const CustomListTile(
            text: "Log Out",
            images: "assets/icons/log_out.png",
          ),
        ],
      ),
    );
  }
}
