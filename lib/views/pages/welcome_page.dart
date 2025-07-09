import 'package:flutter/material.dart';
import 'package:flutter_tutorial/views/pages/login_page.dart';
import 'package:flutter_tutorial/views/pages/onboarding_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/lotties/welcomeAnimation.json',
                  // height: 200.0,
                  width: double.infinity,
                ),
                FittedBox(
                  child: Text(
                    'Flutter Mapp Tutorial',

                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 500.0,
                      letterSpacing: 50.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  onPressed: () {
                    // Navigator.pushReplacement can be used to replace the current page
                    // It can come in handy like if a user logs in and you don't want them to return back to the login page,you can use this to push home page as the replacement to the login page.
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnboardingPage()),
                    );
                  },
                  child: Text('Get Started'),
                ),
                SizedBox(height: 10),

                TextButton(
                  onPressed: () {
                    // Navigator.pushReplacement can be used to replace the current page
                    // It can come in handy like if a user logs in and you don't want them to return back to the login page,you can use this to push home page as the replacement to the login page.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(title: 'Login'),
                      ),
                    );
                  },

                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
