import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final String title;

  const HeroWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'hero1',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),

            child: Image.asset(
              'assets/images/wallpaper2.jpg',
              color: Colors.green,
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
              color: Colors.white,
              letterSpacing: 50.0,
            ),
          ),
        ),
      ],
    );
  }
}
