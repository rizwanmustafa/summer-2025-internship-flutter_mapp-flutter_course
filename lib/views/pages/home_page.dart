import 'package:flutter/material.dart';
import 'package:flutter_tutorial/data/constants.dart';
import 'package:flutter_tutorial/views/pages/course_page.dart';
import 'package:flutter_tutorial/views/widgets/container_widget.dart';
import 'package:flutter_tutorial/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardData = [
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBug,
      KValue.reusableCode,
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            HeroWidget(title: 'Flutter Mapp Course', nextPage: CoursePage()),

            ...List.generate(4, (index) {
              return ContainerWidget(
                title: cardData.elementAt(index),
                description: 'This is the description for card $index',
              );
            }),
          ],
        ),
      ),
    );
  }
}
