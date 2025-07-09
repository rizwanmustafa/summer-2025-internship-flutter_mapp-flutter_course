import 'package:flutter/material.dart';
import 'package:flutter_tutorial/views/widget_tree.dart';
import 'package:flutter_tutorial/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(),

            FilledButton(
              onPressed: () {
                // Navigator.pushReplacement can be used to replace the current page
                // It can come in handy like if a user logs in and you don't want them to return back to the login page,you can use this to push home page as the replacement to the login page.
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetTree()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
