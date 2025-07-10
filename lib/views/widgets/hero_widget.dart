import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final String title;
  final Widget? nextPage;

  const HeroWidget({super.key, required this.title, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null
          ? () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => nextPage!));
            }
          : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: 'hero1',
            child: AspectRatio(
              aspectRatio: 1920 / 1080,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),

                child: Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/wallpaper2.jpg',
                  color: Colors.green,
                  colorBlendMode: BlendMode.darken,
                ),
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
      ),
    );
  }
}
