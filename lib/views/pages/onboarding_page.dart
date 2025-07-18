import 'package:flutter/material.dart';
import 'package:flutter_tutorial/views/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Lottie.asset('assets/lotties/hi.json'),
                  SizedBox(height: 20.0),

                  SizedBox(height: 10),

                  FilledButton(
                    style: FilledButton.styleFrom(
                      minimumSize: Size(double.infinity, 40.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(title: 'Register'),
                        ),
                      );
                    },
                    child: Text('Next'),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
