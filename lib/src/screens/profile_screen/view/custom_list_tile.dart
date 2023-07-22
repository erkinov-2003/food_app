import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String text;
  final String images;
  const CustomListTile({required this.text, required this.images, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 248, 238),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child:  Center(
          child: Image(
            image: AssetImage(images),
            height: 28,
          ),
        ),
      ),
      title:  Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 112, 112, 112),
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 24),
    );
  }
}
