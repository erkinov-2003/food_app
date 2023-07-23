import 'package:flutter/material.dart';

class FoodsWidget extends StatelessWidget {
  final String name;
  final String path;

  const FoodsWidget({required this.path, required this.name, Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Image(
          image: AssetImage(path),
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
